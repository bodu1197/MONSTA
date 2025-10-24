# 돌파구 데이터베이스 설치 가이드

## 📊 생성된 파일

```
database/
├── schema.sql              ← 1️⃣ 먼저 실행 (테이블 생성)
├── seed-categories.sql     ← 2️⃣ 나중에 실행 (카테고리 데이터)
├── categories-source.ts    ← 원본 TypeScript 파일
└── generate-category-sql.js ← 변환 스크립트
```

## 📈 통계

- **12개 테이블** 생성
- **22개 대분류 카테고리**
- **598개 전체 카테고리** (대분류 + 중분류 + 소분류)

---

## 🚀 Supabase 설치 방법

### Step 1: Supabase 접속

1. https://supabase.com/dashboard 로그인
2. 프로젝트 선택: `pidosvcdrjxjdpwmswuo`
3. 왼쪽 메뉴에서 **SQL Editor** 클릭

### Step 2: 테이블 생성

1. **New Query** 버튼 클릭
2. `schema.sql` 파일 열기
3. 전체 내용 복사 (Ctrl+A, Ctrl+C)
4. SQL Editor에 붙여넣기 (Ctrl+V)
5. **Run** 버튼 클릭 ▶️

**예상 시간**: 약 10초

**성공 메시지**:
```
Success. No rows returned
```

### Step 3: 카테고리 데이터 삽입

1. **New Query** 버튼 클릭 (새 쿼리 창)
2. `seed-categories.sql` 파일 열기
3. 전체 내용 복사 (Ctrl+A, Ctrl+C)
4. SQL Editor에 붙여넣기 (Ctrl+V)
5. **Run** 버튼 클릭 ▶️

**예상 시간**: 약 30초~1분

**성공 메시지**:
```
Success. No rows returned
```

---

## ✅ 설치 확인

### 1. 테이블 확인

SQL Editor에서 실행:
```sql
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;
```

**예상 결과**: 12개 테이블
- categories
- comments
- conversations
- follows
- likes
- messages
- notifications
- orders
- posts
- reviews
- stories
- users

### 2. 카테고리 확인

SQL Editor에서 실행:
```sql
-- 대분류 카테고리 (22개)
SELECT name, slug, service_count, is_popular
FROM categories
WHERE parent_id IS NULL
ORDER BY display_order;
```

**예상 결과**: 22개 대분류
1. 생활 서비스
2. 심부름
3. AI 서비스
4. 디자인
5. IT/프로그래밍
6. 마케팅
7. 영상/사진
8. 번역/통역
9. 문서/글쓰기
10. 음악/오디오
11. 비즈니스
12. 라이프스타일
13. 이벤트
14. 취미/핸드메이드
15. 뷰티/패션
16. 상담/코칭
17. 운세/타로
18. 전자책/템플릿
19. 세무/법무/노무
20. 주문제작
21. 취업/입시
22. 직무역량

### 3. 전체 카테고리 개수 확인

```sql
SELECT COUNT(*) as total_categories FROM categories;
```

**예상 결과**: 598개

### 4. RLS 정책 확인

```sql
SELECT tablename, policyname
FROM pg_policies
WHERE schemaname = 'public'
ORDER BY tablename;
```

**예상 결과**: 30개 이상의 RLS 정책

---

## 🔧 트러블슈팅

### 문제 1: "permission denied" 에러

**원인**: RLS 정책 때문

**해결**:
```sql
-- RLS 임시 비활성화 (테스트용)
ALTER TABLE categories DISABLE ROW LEVEL SECURITY;
```

### 문제 2: "duplicate key value" 에러

**원인**: 이미 데이터가 있음

**해결**:
```sql
-- 기존 데이터 삭제
TRUNCATE categories CASCADE;
```

그 후 `seed-categories.sql` 다시 실행

### 문제 3: "relation does not exist" 에러

**원인**: `schema.sql`을 먼저 실행하지 않음

**해결**: `schema.sql`을 먼저 실행한 후 `seed-categories.sql` 실행

---

## 📚 데이터베이스 구조

### users 테이블
- 사용자 정보
- RLS: 자신의 프로필만 수정 가능

### posts 테이블
- 포트폴리오/작업물
- RLS: 모두 조회 가능, 작성자만 수정/삭제

### follows 테이블
- 팔로우 관계
- UNIQUE(follower_id, following_id)
- 자기 자신 팔로우 불가

### likes 테이블
- 좋아요
- 트리거: posts.like_count 자동 증가/감소

### comments 테이블
- 댓글
- 트리거: posts.comment_count 자동 증가/감소
- 대댓글 지원 (parent_comment_id)

### stories 테이블
- 24시간 스토리
- expires_at 자동 설정

### orders 테이블
- 주문/거래
- 에스크로 지원
- RLS: 구매자와 판매자만 조회 가능

### reviews 테이블
- 리뷰
- rating 1~5
- 판매자 답글 가능

### conversations & messages
- 1:1 채팅
- RLS: 대화 참여자만 조회 가능

### notifications
- 알림
- type: like, comment, follow, order, message, review, system

---

## 🎯 다음 단계

설치 완료 후:

1. ✅ 프론트엔드에서 Supabase 클라이언트 연결
2. ✅ 카테고리 데이터 조회 테스트
3. ✅ 회원가입/로그인 구현
4. ✅ 포스트 작성 기능 구현

---

## 📞 도움이 필요하면

- Supabase 공식 문서: https://supabase.com/docs
- PostgreSQL 문서: https://www.postgresql.org/docs/
