-- ================================================
-- 회원가입 시 자동으로 public.users 프로필 생성
-- ================================================

-- 함수: auth.users에서 public.users로 프로필 자동 생성
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
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
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 트리거: auth.users에 새 사용자가 생성되면 public.users에도 생성
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_user();

-- ================================================
-- 완료!
-- ================================================
-- 이제 회원가입하면 자동으로 public.users에 프로필이 생성됩니다.
-- ================================================
