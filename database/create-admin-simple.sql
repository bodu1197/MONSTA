-- ================================================
-- 관리자 계정 생성 (간단 버전)
-- ================================================

-- 주의: 이 스크립트는 실행 전에 먼저 Supabase Dashboard에서
-- Authentication → Users → Add User로 계정을 만들어야 합니다.

-- 1단계: Supabase Dashboard에서 수동으로 실행
-- - Authentication → Users → "Add User" 클릭
-- - Email: ohyus1197@gmail.com
-- - Password: chl1197dbA!@
-- - Auto Confirm User: 체크
-- - Create User 클릭

-- 2단계: 생성된 사용자의 UUID를 복사한 후 아래 SQL 실행

-- 방법 1: UUID를 알고 있는 경우 (위에서 복사한 UUID로 교체)
/*
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
  '여기에-UUID-붙여넣기',
  'ohyus1197@gmail.com',
  'king',
  '코드왕',
  'both',
  true,
  NOW(),
  NOW()
);
*/

-- 방법 2: 이메일로 자동으로 찾기 (Supabase에서 auth.users 읽기 권한이 있는 경우)
INSERT INTO public.users (
  id,
  email,
  shop_id,
  shop_name,
  user_type,
  is_verified,
  created_at,
  updated_at
)
SELECT
  id,
  'ohyus1197@gmail.com',
  'king',
  '코드왕',
  'both',
  true,
  NOW(),
  NOW()
FROM auth.users
WHERE email = 'ohyus1197@gmail.com'
ON CONFLICT (id) DO NOTHING;

-- ================================================
-- 완료!
-- ================================================
-- 이제 ohyus1197@gmail.com / chl1197dbA!@ 로 로그인할 수 있습니다.
-- ================================================
