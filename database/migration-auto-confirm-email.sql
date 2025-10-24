-- ================================================
-- 회원가입 시 public.users 프로필 자동 생성
-- ================================================
-- 이메일 확인은 정상적으로 작동하도록 유지
-- 개발 중에는 Supabase Dashboard 또는 SMTP 설정 필요

-- 트리거 함수: 프로필만 생성
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
SECURITY DEFINER
SET search_path = public
LANGUAGE plpgsql
AS $$
BEGIN
  -- public.users에 프로필 생성
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

-- RLS 정책 수정
DROP POLICY IF EXISTS "Users can insert own profile" ON users;
CREATE POLICY "Users can insert own profile"
  ON users FOR INSERT
  WITH CHECK (true);

-- 트리거 재생성 (AFTER INSERT)
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_user();

-- ================================================
-- 완료!
-- ================================================
-- 이메일 확인 설정:
-- 1. Supabase Dashboard → Project Settings → Auth
-- 2. Site URL: http://localhost:3000 (개발), https://yourdomain.com (프로덕션)
-- 3. Redirect URLs: http://localhost:3000/auth/callback
--
-- SMTP 설정 (선택):
-- 1. Project Settings → Auth → SMTP Settings
-- 2. Mailtrap, Gmail, SendGrid 등 설정
-- ================================================
