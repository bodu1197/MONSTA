-- ================================================
-- 관리자 계정 생성
-- ================================================

-- 주의: 이 방법은 Supabase Auth를 우회합니다.
-- 실제 프로덕션에서는 정상적인 회원가입을 사용하세요.

-- 1. auth.users에 계정 생성 (Supabase Auth)
-- 주의: 이 부분은 Supabase Dashboard에서 수동으로 해야 합니다.
-- Authentication → Users → Add User → Manual
-- Email: ohyus1197@gmail.com
-- Password: chl1197dbA!@

-- 2. public.users 테이블에 프로필 정보 추가
-- 먼저 auth.users에서 생성된 UUID를 확인하세요
-- SELECT id FROM auth.users WHERE email = 'ohyus1197@gmail.com';

-- 아래 UUID 부분을 실제 생성된 UUID로 변경하세요
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
  'YOUR_AUTH_USER_UUID_HERE', -- auth.users의 UUID로 변경
  'ohyus1197@gmail.com',
  'king',
  '코드왕',
  'both', -- 구매자이자 판매자
  true, -- 관리자는 자동 인증
  NOW(),
  NOW()
);

-- ================================================
-- 실행 방법
-- ================================================
-- 1. Supabase Dashboard → Authentication → Users
-- 2. "Add User" 클릭
-- 3. Email: ohyus1197@gmail.com, Password: chl1197dbA!@ 입력
-- 4. 생성된 User의 UUID 복사
-- 5. SQL Editor에서 위 INSERT문의 UUID 부분 수정 후 실행
-- ================================================
