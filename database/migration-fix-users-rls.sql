-- ================================================
-- users 테이블 RLS 정책 수정
-- ================================================

-- 기존 INSERT 정책 삭제
DROP POLICY IF EXISTS "Users can insert own profile" ON users;

-- 새로운 INSERT 정책: 트리거가 삽입할 수 있도록 허용
CREATE POLICY "Users can insert own profile"
  ON users FOR INSERT
  WITH CHECK (true);

-- ================================================
-- 완료!
-- ================================================
-- 이제 트리거가 users 테이블에 INSERT할 수 있습니다.
-- ================================================
