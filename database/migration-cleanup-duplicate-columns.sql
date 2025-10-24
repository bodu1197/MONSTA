-- ================================================
-- 중복 컬럼 정리 (username/full_name 제거)
-- ================================================

-- 1. 기존 데이터가 있다면 shop_id/shop_name으로 복사 (있을 경우를 대비)
UPDATE users
SET shop_id = username
WHERE shop_id IS NULL AND username IS NOT NULL;

UPDATE users
SET shop_name = full_name
WHERE shop_name IS NULL AND full_name IS NOT NULL;

-- 2. username, full_name 관련 제약조건 삭제
ALTER TABLE users DROP CONSTRAINT IF EXISTS users_username_key;
ALTER TABLE users DROP CONSTRAINT IF EXISTS username_length;
ALTER TABLE users DROP CONSTRAINT IF EXISTS username_format;
ALTER TABLE users DROP CONSTRAINT IF EXISTS full_name_length;

-- 3. username, full_name 인덱스 삭제
DROP INDEX IF EXISTS idx_users_username;

-- 4. username, full_name 컬럼 삭제
ALTER TABLE users DROP COLUMN IF EXISTS username;
ALTER TABLE users DROP COLUMN IF EXISTS full_name;

-- 5. shop_id를 NOT NULL로 변경
ALTER TABLE users ALTER COLUMN shop_id SET NOT NULL;

-- ================================================
-- 완료!
-- ================================================
