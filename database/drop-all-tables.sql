-- ================================================
-- 모든 테이블 삭제 (초기화)
-- ================================================
-- 주의: 이 스크립트는 모든 데이터를 삭제합니다!
-- 실행 전 반드시 백업하세요!

-- 1. 모든 RLS 정책 삭제는 테이블 삭제 시 자동으로 처리됩니다.

-- 2. 테이블 삭제 (의존성 순서대로)
-- CASCADE를 사용하면 관련된 모든 제약조건, 인덱스, 트리거도 함께 삭제됩니다.

DROP TABLE IF EXISTS notifications CASCADE;
DROP TABLE IF EXISTS messages CASCADE;
DROP TABLE IF EXISTS conversations CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS stories CASCADE;
DROP TABLE IF EXISTS comments CASCADE;
DROP TABLE IF EXISTS likes CASCADE;
DROP TABLE IF EXISTS posts CASCADE;
DROP TABLE IF EXISTS follows CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- 3. 함수 삭제
DROP FUNCTION IF EXISTS increment_post_like_count() CASCADE;
DROP FUNCTION IF EXISTS decrement_post_like_count() CASCADE;
DROP FUNCTION IF EXISTS increment_post_comment_count() CASCADE;
DROP FUNCTION IF EXISTS decrement_post_comment_count() CASCADE;
DROP FUNCTION IF EXISTS delete_expired_stories() CASCADE;
DROP FUNCTION IF EXISTS update_updated_at_column() CASCADE;

-- 4. UUID 확장 제거 (선택사항 - 다른 프로젝트에서 사용할 수 있으므로 주석 처리)
-- DROP EXTENSION IF EXISTS "uuid-ossp" CASCADE;

-- ================================================
-- 삭제 완료
-- ================================================

SELECT 'All tables and functions have been dropped successfully!' as status;
