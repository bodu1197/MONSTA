-- ================================================
-- RLS 정책 수정: 트리거가 users 테이블에 INSERT 가능하도록
-- ================================================

-- 기존 INSERT 정책 삭제
DROP POLICY IF EXISTS "Users can insert own profile" ON users;

-- 새로운 INSERT 정책: 서비스 역할도 삽입 가능하도록
CREATE POLICY "Users can insert own profile"
  ON users FOR INSERT
  WITH CHECK (
    auth.uid() = id
    OR
    auth.jwt() ->> 'role' = 'service_role'
  );

-- 또는 더 간단하게: 트리거 함수를 수정해서 RLS 우회
-- 함수 재생성 (SECURITY DEFINER + SET search_path)
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
SECURITY DEFINER
SET search_path = public
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO public.users (
    id,
    email,
    shop_id,
    shop_name,
    user_type,
    is_verified,
    created_at,
    updated_at
  ) VALUES (
    NEW.id,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'shop_id', 'user_' || substr(NEW.id::text, 1, 8)),
    COALESCE(NEW.raw_user_meta_data->>'shop_name', '익명'),
    COALESCE(NEW.raw_user_meta_data->>'user_type', 'buyer'),
    COALESCE(NEW.email_confirmed_at IS NOT NULL, false),
    NOW(),
    NOW()
  );
  RETURN NEW;
EXCEPTION
  WHEN OTHERS THEN
    RAISE WARNING 'Failed to create user profile: %', SQLERRM;
    RETURN NEW;
END;
$$;

-- 트리거 재생성
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_user();

-- ================================================
-- 완료!
-- ================================================
