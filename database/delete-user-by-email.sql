-- ================================================
-- 회원 완전 삭제 (이메일로 검색)
-- ================================================

-- 1. 먼저 사용자 확인
SELECT id, email, shop_id, created_at
FROM auth.users
WHERE email = 'your-email@example.com';

-- 2. auth.users에서 삭제 (이게 먼저!)
DELETE FROM auth.users
WHERE email = 'your-email@example.com';

-- 3. public.users에서도 삭제 (혹시 남아있으면)
DELETE FROM public.users
WHERE email = 'your-email@example.com';

-- ================================================
-- 사용 방법:
-- ================================================
-- 위의 'your-email@example.com'을 3군데 모두 바꾸고 실행
--
-- 또는 Dashboard에서:
-- Authentication → Users → 사용자 클릭 → Delete User
-- ================================================
