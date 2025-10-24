#!/usr/bin/env node

/**
 * categories-source.ts를 SQL INSERT 문으로 변환
 *
 * 실행 방법:
 * node generate-category-sql.js
 */

const fs = require('fs');
const path = require('path');

console.log('🚀 카테고리 SQL 변환 시작...\n');

// 소스 파일 읽기
const sourceFile = path.join(__dirname, 'categories-source.ts');
const content = fs.readFileSync(sourceFile, 'utf-8');

// FULL_CATEGORIES 배열 추출
const match = content.match(/export const FULL_CATEGORIES.*?= (\[[\s\S]*\n\])/);
if (!match) {
  console.error('❌ FULL_CATEGORIES를 찾을 수 없습니다.');
  process.exit(1);
}

// TypeScript 코드를 JavaScript로 변환
let jsCode = match[1];

// 주석 제거
jsCode = jsCode.replace(/\/\/[^\n]*/g, '');
jsCode = jsCode.replace(/\/\*[\s\S]*?\*\//g, '');

// 트레일링 쉼표 제거
jsCode = jsCode.replace(/,(\s*[\]}])/g, '$1');

// 평가하여 객체로 변환
let categories;
try {
  categories = eval('(' + jsCode + ')');
  console.log(`✅ ${categories.length}개 대분류 카테고리 파싱 완료\n`);
} catch (error) {
  console.error('❌ 파싱 에러:', error.message);
  console.error('파일을 수동으로 확인해주세요.');
  process.exit(1);
}

// SQL 생성
let sql = `-- ================================================
-- 돌파구(DOLPA) 전체 카테고리 데이터
-- 자동 생성됨: ${new Date().toISOString()}
-- ================================================

-- 기존 카테고리 삭제 (초기화)
TRUNCATE categories CASCADE;

`;

let totalCount = 0;
const processedIds = new Set();

/**
 * SQL 문자열 이스케이프
 */
function escapeSql(str) {
  if (!str) return null;
  return str.replace(/'/g, "''");
}

/**
 * 재귀적으로 카테고리 처리
 */
function processCategory(category, parentId = null, level = 0) {
  // ID 중복 체크
  if (processedIds.has(category.id)) {
    console.warn(`⚠️  중복 ID 발견: ${category.id} - 건너뜁니다.`);
    return;
  }
  processedIds.add(category.id);

  const id = category.id;
  const name = escapeSql(category.name);
  const slug = category.slug;
  const icon = category.icon ? escapeSql(category.icon) : null;
  const description = category.description ? escapeSql(category.description) : null;
  const serviceCount = category.service_count || 0;
  const isPopular = category.is_popular ? 'true' : 'false';
  const displayOrder = category.popularity_score || level;

  sql += `INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)\n`;
  sql += `VALUES ('${id}', ${parentId ? `'${parentId}'` : 'NULL'}, '${name}', '${slug}', ${icon ? `'${icon}'` : 'NULL'}, ${description ? `'${description}'` : 'NULL'}, ${serviceCount}, ${isPopular}, ${displayOrder});\n`;

  totalCount++;

  // 자식 카테고리 재귀 처리
  if (category.children && Array.isArray(category.children)) {
    category.children.forEach((child, index) => {
      processCategory(child, id, index);
    });
  }
}

// 모든 최상위 카테고리 처리
console.log('📊 카테고리 변환 중...');
categories.forEach((category, index) => {
  console.log(`  ${index + 1}. ${category.name} (${category.slug})`);
  processCategory(category, null, index);
});

sql += `
-- ================================================
-- 변환 완료
-- 총 ${totalCount}개 카테고리 생성됨
-- ================================================
`;

// SQL 파일 저장
const outputFile = path.join(__dirname, 'seed-categories.sql');
fs.writeFileSync(outputFile, sql, 'utf-8');

console.log(`\n✅ SQL 파일 생성 완료!`);
console.log(`📁 파일 위치: ${outputFile}`);
console.log(`📊 총 ${totalCount}개 카테고리 변환 완료\n`);
console.log(`다음 단계:`);
console.log(`1. Supabase Dashboard → SQL Editor 접속`);
console.log(`2. schema.sql 먼저 실행 (테이블 생성)`);
console.log(`3. seed-categories.sql 실행 (카테고리 데이터)`);
