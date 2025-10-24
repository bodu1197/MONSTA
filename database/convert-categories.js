// categories-full.ts를 SQL INSERT 문으로 변환하는 스크립트
const fs = require('fs');
const path = require('path');

// categories-full.ts 파일 읽기
const filePath = path.join(__dirname, 'categories-full.ts');
const fileContent = fs.readFileSync(filePath, 'utf-8');

// TypeScript 코드 실행을 위한 간단한 파싱
// FULL_CATEGORIES 배열 추출
const categoriesMatch = fileContent.match(/export const FULL_CATEGORIES: CategoryItem\[\] = (\[[\s\S]*?\n\])/);

if (!categoriesMatch) {
  console.error('FULL_CATEGORIES를 찾을 수 없습니다.');
  process.exit(1);
}

// JSON으로 변환 가능하도록 처리
let categoriesStr = categoriesMatch[1];

// TypeScript 주석 제거
categoriesStr = categoriesStr.replace(/\/\/.*/g, '');

// 마지막 쉼표 제거
categoriesStr = categoriesStr.replace(/,(\s*[\]}])/g, '$1');

// 객체 키에 따옴표 추가
categoriesStr = categoriesStr.replace(/(\w+):/g, '"$1":');

let categories;
try {
  categories = eval(categoriesStr); // 주의: 실제 프로덕션에서는 사용하지 말 것
} catch (error) {
  console.error('파싱 에러:', error.message);
  // fallback: 수동 SQL 작성
  console.log('자동 변환 실패. 수동으로 categories-full.ts를 확인해주세요.');
  process.exit(1);
}

// SQL INSERT 문 생성
let sql = `-- ================================================
-- 돌파구(DOLPA) 카테고리 데이터
-- kmong categories-full.ts에서 자동 변환됨
-- ================================================

-- 기존 데이터 삭제 (초기화 시에만 사용)
-- TRUNCATE categories CASCADE;

`;

let insertCount = 0;

// 재귀적으로 카테고리 처리
function processCategory(category, parentId = null, level = 0) {
  const id = category.id || `cat-${insertCount++}`;
  const name = category.name.replace(/'/g, "''"); // SQL escape
  const slug = category.slug;
  const icon = category.icon || null;
  const description = category.description ? category.description.replace(/'/g, "''") : null;
  const serviceCount = category.service_count || 0;
  const isPopular = category.is_popular || false;
  const displayOrder = category.popularity_score || level;

  sql += `INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order) VALUES\n`;
  sql += `  ('${id}', ${parentId ? `'${parentId}'` : 'NULL'}, '${name}', '${slug}', ${icon ? `'${icon}'` : 'NULL'}, ${description ? `'${description}'` : 'NULL'}, ${serviceCount}, ${isPopular}, ${displayOrder});\n\n`;

  // 자식 카테고리 처리
  if (category.children && Array.isArray(category.children)) {
    category.children.forEach((child, index) => {
      processCategory(child, id, index);
    });
  }
}

// 모든 최상위 카테고리 처리
categories.forEach((category, index) => {
  processCategory(category, null, index);
});

sql += `-- ================================================
-- 카테고리 데이터 삽입 완료
-- 총 ${insertCount}개 카테고리
-- ================================================\n`;

// SQL 파일로 저장
const outputPath = path.join(__dirname, 'seed-categories-auto.sql');
fs.writeFileSync(outputPath, sql, 'utf-8');

console.log(`✅ SQL 파일 생성 완료: ${outputPath}`);
console.log(`📊 총 ${insertCount}개 카테고리 변환 완료`);
