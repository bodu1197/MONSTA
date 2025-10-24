-- ================================================
-- 돌파구(DOLPA) 전체 카테고리 데이터
-- 자동 생성됨: 2025-10-24T05:32:46.972Z
-- ================================================

-- 기존 카테고리 삭제 (초기화)
TRUNCATE categories CASCADE;

INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('life-service', NULL, '생활 서비스', 'life-service', 'home', '일상 생활 편의 서비스', 35, false, 88);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('home-service', 'life-service', '가정 서비스', 'home-service', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cleaning-service', 'home-service', '청소 서비스', 'cleaning-service', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('housekeeping', 'home-service', '파출부/가사도우미', 'housekeeping', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('organizing-consulting', 'home-service', '정리정돈/수납 컨설팅', 'organizing-consulting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('appliance-install', 'home-service', '가전 설치/수리', 'appliance-install', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('aircon-cleaning', 'home-service', '에어컨 청소', 'aircon-cleaning', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pest-control', 'home-service', '해충방제/방역', 'pest-control', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('disinfection-service', 'home-service', '소독 서비스', 'disinfection-service', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('repair-service', 'home-service', '일반 수리 서비스', 'repair-service', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('moving-service', 'home-service', '이사 서비스', 'moving-service', NULL, NULL, 0, true, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('daily-service', 'life-service', '일상 서비스', 'daily-service', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('laundry-service', 'daily-service', '세탁 서비스', 'laundry-service', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pet-care', 'daily-service', '반려동물 케어', 'pet-care', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pet-walking', 'daily-service', '반려동물 산책 대행', 'pet-walking', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pet-grooming', 'daily-service', '반려동물 미용', 'pet-grooming', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('babysitter', 'daily-service', '베이비시터', 'babysitter', NULL, NULL, 0, true, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('senior-care', 'daily-service', '시니어 케어/간병', 'senior-care', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('vehicle-service', 'life-service', '차량 서비스', 'vehicle-service', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('car-wash', 'vehicle-service', '세차 서비스', 'car-wash', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('car-maintenance', 'vehicle-service', '차량 정비 예약 대행', 'car-maintenance', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('designated-driver', 'vehicle-service', '대리 운전', 'designated-driver', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('chauffeur-service', 'vehicle-service', '운전 기사', 'chauffeur-service', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('booking-agency', 'life-service', '예약/대행 서비스', 'booking-agency', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('queue-waiting', 'booking-agency', '줄서기 대행', 'queue-waiting', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('restaurant-booking', 'booking-agency', '레스토랑 예약 대행', 'restaurant-booking', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hospital-booking', 'booking-agency', '병원 예약/동행', 'hospital-booking', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('government-office', 'booking-agency', '관공서 업무 대행', 'government-office', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('interpretation-companion', 'booking-agency', '통역 동행', 'interpretation-companion', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('rental-service', 'life-service', '렌탈 서비스', 'rental-service', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('appliance-rental', 'rental-service', '가전 렌탈', 'appliance-rental', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('living-goods-rental', 'rental-service', '생활용품 렌탈', 'living-goods-rental', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('party-equipment-rental', 'rental-service', '파티/이벤트 용품 렌탈', 'party-equipment-rental', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('errands', NULL, '심부름', 'errands', 'motorcycle', '빠른 배달 및 심부름 서비스', 13, false, 75);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('delivery-service', 'errands', '배달 서비스', 'delivery-service', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('quick-delivery', 'delivery-service', '퀵 서비스', 'quick-delivery', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('document-delivery', 'delivery-service', '서류 배달', 'document-delivery', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('package-delivery', 'delivery-service', '택배 대행', 'package-delivery', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('food-delivery', 'delivery-service', '음식 배달 대행', 'food-delivery', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('medicine-delivery', 'delivery-service', '약 배달', 'medicine-delivery', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('flower-delivery', 'delivery-service', '꽃 배달', 'flower-delivery', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('gift-delivery', 'delivery-service', '선물 배달', 'gift-delivery', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('errand-service', 'errands', '심부름 대행', 'errand-service', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('shopping-errands', 'errand-service', '장보기 대행', 'shopping-errands', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pickup-service', 'errand-service', '픽업 서비스', 'pickup-service', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('secondhand-trade', 'errand-service', '중고 거래 대행', 'secondhand-trade', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('return-exchange', 'errand-service', '반품/교환 대행', 'return-exchange', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('postal-service', 'errand-service', '우편 업무 대행', 'postal-service', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-services', NULL, 'AI 서비스', 'ai-services', 'robot', NULL, 16, false, 999);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-design', 'ai-services', 'AI 디자인', 'ai-design', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-illustration', 'ai-design', 'AI 일러스트', 'ai-illustration', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-photorealistic-model', 'ai-design', 'AI 실사·모델', 'ai-photorealistic-model', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-ad-material-design', 'ai-design', 'AI 광고소재 디자인', 'ai-ad-material-design', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-character-design', 'ai-design', 'AI 캐릭터 디자인', 'ai-character-design', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-product-package-design', 'ai-design', 'AI 제품·패키지 디자인', 'ai-product-package-design', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-space-design', 'ai-design', 'AI 공간 디자인', 'ai-space-design', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-retouching-composition', 'ai-design', 'AI 보정·누끼·합성', 'ai-retouching-composition', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-book-cover', 'ai-design', 'AI 책 표지', 'ai-book-cover', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-design-etc', 'ai-design', 'AI 디자인 기타', 'ai-design-etc', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-image', 'ai-services', 'AI 이미지', 'ai-image', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-image-creation-retouching', 'ai-image', 'AI 이미지 제작·누끼·보정', 'ai-image-creation-retouching', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-product-photo', 'ai-image', 'AI 제품 사진', 'ai-product-photo', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-upscaling', 'ai-image', 'AI 업스케일링(화질 개선)', 'ai-upscaling', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-hair-model', 'ai-image', 'AI 헤어 모델', 'ai-hair-model', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-ad-model', 'ai-image', 'AI 광고 모델', 'ai-ad-model', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-development', 'ai-services', 'AI 개발', 'ai-development', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('custom-chatbot-gpt', 'ai-development', '맞춤형 챗봇·GPT', 'custom-chatbot-gpt', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-system-service', 'ai-development', 'AI 시스템·서비스', 'ai-system-service', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-automation-program', 'ai-development', 'AI 자동화 프로그램', 'ai-automation-program', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('prompt-engineering', 'ai-development', '프롬프트 설계(엔지니어링)', 'prompt-engineering', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-modeling-optimization', 'ai-development', 'AI 모델링·최적화', 'ai-modeling-optimization', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('image-voice-recognition', 'ai-development', '이미지·음성 인식', 'image-voice-recognition', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-feature-development-integration', 'ai-development', 'AI 기능 개발·연동', 'ai-feature-development-integration', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-agent', 'ai-development', 'AI 에이전트', 'ai-agent', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-data-analysis', 'ai-development', 'AI 데이터 분석', 'ai-data-analysis', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-introduction-consulting', 'ai-development', 'AI 도입 컨설팅', 'ai-introduction-consulting', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('natural-language-processing', 'ai-development', '자연어 처리', 'natural-language-processing', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-prompt', 'ai-services', 'AI 프롬프트', 'ai-prompt', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-prompt-child', 'ai-prompt', 'AI 프롬프트', 'ai-prompt-child', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-marketing', 'ai-services', 'AI 마케팅', 'ai-marketing', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-marketing-content', 'ai-marketing', 'AI 마케팅 콘텐츠', 'ai-marketing-content', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-aeo-geo', 'ai-marketing', 'AI AEO·GEO', 'ai-aeo-geo', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-short-form-ad-production', 'ai-marketing', 'AI 숏폼 광고 제작', 'ai-short-form-ad-production', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-marketing-consulting', 'ai-marketing', 'AI 마케팅 컨설팅', 'ai-marketing-consulting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-marketing-etc', 'ai-marketing', 'AI 마케팅 기타', 'ai-marketing-etc', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-video', 'ai-services', 'AI 영상', 'ai-video', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-ad-video', 'ai-video', 'AI 광고 영상', 'ai-ad-video', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-short-form-video', 'ai-video', 'AI 숏폼 영상', 'ai-short-form-video', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-video-editing-retouching-captioning', 'ai-video', 'AI 영상 편집·보정·자막', 'ai-video-editing-retouching-captioning', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-sound', 'ai-services', 'AI 음향', 'ai-sound', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-music', 'ai-sound', 'AI 음원', 'ai-music', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-dubbing-narration', 'ai-sound', 'AI 더빙·나레이션', 'ai-dubbing-narration', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-content-writing', 'ai-services', 'AI 콘텐츠 라이팅', 'ai-content-writing', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-content-production', 'ai-content-writing', 'AI 콘텐츠 생산', 'ai-content-production', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-content-review-editing', 'ai-content-writing', 'AI 콘텐츠 검수·편집', 'ai-content-review-editing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-startup-monetization', 'ai-services', 'AI 창업·수익화', 'ai-startup-monetization', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-business-monetization-ebook', 'ai-startup-monetization', 'AI 사업·수익화 전자책', 'ai-business-monetization-ebook', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-startup-consulting', 'ai-startup-monetization', 'AI 창업 자문', 'ai-startup-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-management-operation-consulting', 'ai-startup-monetization', 'AI 경영·운영 자문', 'ai-management-operation-consulting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-employment-admission', 'ai-services', 'AI 취업·입시', 'ai-employment-admission', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-employment-admission-consulting', 'ai-employment-admission', 'AI 취업·입시 컨설팅', 'ai-employment-admission-consulting', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-education', 'ai-services', 'AI 교육', 'ai-education', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-skill-ebook', 'ai-education', 'AI 스킬 전자책', 'ai-skill-ebook', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-work-utilization-lesson', 'ai-education', 'AI 업무 활용 레슨', 'ai-work-utilization-lesson', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-development-analysis-lesson', 'ai-education', 'AI 개발·분석 레슨', 'ai-development-analysis-lesson', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-marketing-lesson', 'ai-education', 'AI 마케팅 레슨', 'ai-marketing-lesson', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-content-production-lesson', 'ai-education', 'AI 콘텐츠 제작 레슨', 'ai-content-production-lesson', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('etc-ai-lesson', 'ai-education', '기타 AI 레슨', 'etc-ai-lesson', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-translation-interpretation', 'ai-services', 'AI 통·번역', 'ai-translation-interpretation', NULL, NULL, 0, false, 11);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-translation-review-editing', 'ai-translation-interpretation', 'AI 번역 검수·편집', 'ai-translation-review-editing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-interpretation', 'ai-translation-interpretation', 'AI 통역', 'ai-interpretation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('design', NULL, '디자인', 'design', 'palette', '창의적인 디자인 솔루션', 58, false, 95);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('logo-branding', 'design', '로고·브랜딩', 'logo-branding', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('logo-design', 'logo-branding', '로고 디자인', 'logo-design', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('brand-design-guide', 'logo-branding', '브랜드 디자인·가이드', 'brand-design-guide', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('print-promotional', 'design', '인쇄·홍보물', 'print-promotional', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-card', 'print-promotional', '명함', 'business-card', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('flyer-poster-print', 'print-promotional', '전단지·포스터·인쇄물', 'flyer-poster-print', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('banner-x-banner', 'print-promotional', '현수막·X배너', 'banner-x-banner', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('menu-board', 'print-promotional', '메뉴판', 'menu-board', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('promotional-print-output', 'print-promotional', '홍보물 인쇄·출력', 'promotional-print-output', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('sticker-envelope-invitation', 'print-promotional', '스티커·봉투·초대장', 'sticker-envelope-invitation', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('web-mobile-design', 'design', '웹·모바일 디자인', 'web-mobile-design', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('web-ui-ux', 'web-mobile-design', '웹 UI·UX', 'web-ui-ux', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('app-mobile-ui-ux', 'web-mobile-design', '앱·모바일 UI·UX', 'app-mobile-ui-ux', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('template-homepage', 'web-mobile-design', '템플릿형 홈페이지', 'template-homepage', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('icon-button', 'web-mobile-design', '아이콘·버튼', 'icon-button', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('marketing-design', 'design', '마케팅 디자인', 'marketing-design', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('detail-page', 'marketing-design', '상세페이지', 'detail-page', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('sns-ad-thumbnail', 'marketing-design', 'SNS·광고소재·썸네일', 'sns-ad-thumbnail', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('channel-art-design', 'marketing-design', '채널아트 디자인', 'channel-art-design', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('broadcast-avatar', 'marketing-design', '방송용 아바타', 'broadcast-avatar', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('banner-delivery-app', 'marketing-design', '배너·배달어플', 'banner-delivery-app', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('blog-cafe-design', 'marketing-design', '블로그·카페 디자인', 'blog-cafe-design', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('package-cover', 'design', '패키지·커버', 'package-cover', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('package', 'package-cover', '패키지', 'package', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('book-cover-interior', 'package-cover', '책표지·내지', 'book-cover-interior', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ebook-cover-interior', 'package-cover', '전자책 표지·내지', 'ebook-cover-interior', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('album-cover', 'package-cover', '앨범커버', 'album-cover', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('character-illustration', 'design', '캐릭터·일러스트', 'character-illustration', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('illustration', 'character-illustration', '일러스트', 'illustration', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('caricature', 'character-illustration', '캐리커쳐', 'caricature', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('webtoon-storyboard', 'character-illustration', '웹툰·콘티', 'webtoon-storyboard', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('2d-character', 'character-illustration', '2D 캐릭터', '2d-character', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('emoticon', 'character-illustration', '이모티콘', 'emoticon', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('graphic-design', 'design', '그래픽 디자인', 'graphic-design', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ppt-infographic', 'graphic-design', 'PPT·인포그래픽', 'ppt-infographic', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('photoshop-file-conversion', 'graphic-design', '포토샵·파일변환', 'photoshop-file-conversion', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-design', 'design', '3D 디자인', '3d-design', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-character-figure', '3d-design', '3D 캐릭터·피규어', '3d-character-figure', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-product-modeling-rendering', '3d-design', '3D 제품모델링·렌더링', '3d-product-modeling-rendering', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-space-modeling', '3d-design', '3D 공간 모델링', '3d-space-modeling', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-clothing-jewelry', '3d-design', '3D 의류·쥬얼리', '3d-clothing-jewelry', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-game-source', '3d-design', '3D 게임용 소스', '3d-game-source', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-graphics', '3d-design', '3D 그래픽', '3d-graphics', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('prototype-3d-printing', '3d-design', '시제품·3D프린팅', 'prototype-3d-printing', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('game-web3', 'design', '게임·웹3.0', 'game-web3', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('vr-ar-game', 'game-web3', 'VR·AR·게임', 'vr-ar-game', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('metaverse', 'game-web3', '메타버스', 'metaverse', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('nft-art', 'game-web3', 'NFT아트', 'nft-art', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('industrial-product-design', 'design', '산업·제품 디자인', 'industrial-product-design', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('product-mechanism-design', 'industrial-product-design', '제품·기구 설계', 'product-mechanism-design', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('product-drawing-sketch', 'industrial-product-design', '제품 도면·스케치', 'product-drawing-sketch', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('space-architecture', 'design', '공간·건축', 'space-architecture', NULL, NULL, 0, false, 11);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('drawing-creation-modification', 'space-architecture', '도면 제작·수정', 'drawing-creation-modification', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('interior-consulting', 'space-architecture', '인테리어 컨설팅', 'interior-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('exhibition-stage-design', 'space-architecture', '전시·무대 디자인', 'exhibition-stage-design', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('signboard-construction', 'space-architecture', '간판·시공', 'signboard-construction', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('calligraphy-font', 'design', '캘리그라피·폰트', 'calligraphy-font', NULL, NULL, 0, false, 12);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('calligraphy', 'calligraphy-font', '캘리그라피', 'calligraphy', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('typography', 'calligraphy-font', '타이포그래피', 'typography', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('font-design', 'calligraphy-font', '폰트', 'font-design', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('signature-seal', 'calligraphy-font', '사인·직인', 'signature-seal', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fashion-textile', 'design', '패션·텍스타일', 'fashion-textile', NULL, NULL, 0, false, 13);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('clothing-jewelry-design', 'fashion-textile', '의류·쥬얼리 디자인', 'clothing-jewelry-design', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('work-instruction-diagram', 'fashion-textile', '작업지시서·도식화', 'work-instruction-diagram', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pattern-sample-production', 'fashion-textile', '패턴·샘플제작', 'pattern-sample-production', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('design-etc', 'design', '기타', 'design-etc', NULL, NULL, 0, false, 14);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('designer-subscription', 'design-etc', '디자이너 구독제', 'designer-subscription', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('design-template', 'design-etc', '디자인 템플릿', 'design-template', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-prompt-design', 'design-etc', 'AI 프롬프트', 'ai-prompt-design', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('barcode-qr-code', 'design-etc', '바코드·QR코드', 'barcode-qr-code', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-design', 'design-etc', '기타 디자인', 'other-design', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('it-programming', NULL, 'IT/프로그래밍', 'it-programming', 'code', '웹, 앱, 소프트웨어 개발', 66, false, 999);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('web-builder', 'it-programming', '웹빌더', 'web-builder', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('rhymix', 'web-builder', '라이믹스', 'rhymix', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('gnuboard', 'web-builder', '그누보드', 'gnuboard', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('wordpress', 'web-builder', '워드프레스', 'wordpress', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cafe24', 'web-builder', '카페24', 'cafe24', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('imweb', 'web-builder', '아임웹', 'imweb', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('notion-web', 'web-builder', '노션', 'notion-web', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('shopify', 'web-builder', '쇼피파이', 'shopify', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('wix', 'web-builder', '윅스', 'wix', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('web-creation', 'it-programming', '웹 제작', 'web-creation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('homepage-new-creation', 'web-creation', '홈페이지 신규 제작', 'homepage-new-creation', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('shopping-mall-new-creation', 'web-creation', '쇼핑몰 신규 제작', 'shopping-mall-new-creation', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('landing-page', 'web-creation', '랜딩페이지', 'landing-page', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('web-maintenance', 'it-programming', '웹 유지보수', 'web-maintenance', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('homepage-modification-maintenance', 'web-maintenance', '홈페이지 수정·유지보수', 'homepage-modification-maintenance', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('shopping-mall-modification-maintenance', 'web-maintenance', '쇼핑몰 수정·유지보수', 'shopping-mall-modification-maintenance', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('publishing', 'web-maintenance', '퍼블리싱', 'publishing', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('search-optimization-seo', 'web-maintenance', '검색최적화·SEO', 'search-optimization-seo', NULL, NULL, 0, true, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('analytics', 'web-maintenance', '애널리틱스', 'analytics', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('program', 'it-programming', '프로그램', 'program', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('complete-program-store', 'program', '완성형 프로그램 스토어', 'complete-program-store', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('revenue-automation', 'program', '수익 자동화', 'revenue-automation', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('work-automation', 'program', '업무 자동화', 'work-automation', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('crawling-scraping', 'program', '크롤링·스크래핑', 'crawling-scraping', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('general-program', 'program', '일반 프로그램', 'general-program', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('program-modification-maintenance', 'program', '프로그램 수정·유지보수', 'program-modification-maintenance', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('server-cloud', 'program', '서버·클라우드', 'server-cloud', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('excel-spreadsheet', 'program', '엑셀·스프레드시트', 'excel-spreadsheet', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('bot-chatbot', 'program', '봇·챗봇', 'bot-chatbot', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('mobile', 'it-programming', '모바일', 'mobile', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('app', 'mobile', '앱', 'app', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('app-packaging', 'mobile', '앱 패키징', 'app-packaging', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('app-modification-maintenance', 'mobile', '앱 수정·유지보수', 'app-modification-maintenance', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('security-quality', 'it-programming', '보안·품질관리', 'security-quality', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('information-security', 'security-quality', '정보 보안', 'information-security', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('qa-test', 'security-quality', 'QA·테스트', 'qa-test', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-it', 'it-programming', 'AI', 'ai-it', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-system-service-it', 'ai-it', 'AI 시스템·서비스', 'ai-system-service-it', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('custom-chatbot-gpt-it', 'ai-it', '맞춤형 챗봇·GPT', 'custom-chatbot-gpt-it', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-automation-program-it', 'ai-it', 'AI 자동화 프로그램', 'ai-automation-program-it', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('prompt-engineering-it', 'ai-it', '프롬프트 설계(엔지니어링)', 'prompt-engineering-it', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-modeling-optimization-it', 'ai-it', 'AI 모델링·최적화', 'ai-modeling-optimization-it', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('image-voice-recognition-it', 'ai-it', '이미지·음성 인식', 'image-voice-recognition-it', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-feature-development-integration-it', 'ai-it', 'AI 기능 개발·연동', 'ai-feature-development-integration-it', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-agent-it', 'ai-it', 'AI 에이전트', 'ai-agent-it', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-data-analysis-it', 'ai-it', 'AI 데이터 분석', 'ai-data-analysis-it', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-introduction-consulting-it', 'ai-it', 'AI 도입 컨설팅', 'ai-introduction-consulting-it', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('natural-language-processing-it', 'ai-it', '자연어 처리', 'natural-language-processing-it', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data', 'it-programming', '데이터', 'data', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-purchase-construction', 'data', '데이터 구매·구축', 'data-purchase-construction', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-labeling', 'data', '데이터 라벨링', 'data-labeling', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-preprocessing-analysis-visualization', 'data', '데이터 전처리·분석·시각화', 'data-preprocessing-analysis-visualization', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('database', 'data', '데이터베이스', 'database', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('trend-tech', 'it-programming', '트렌드', 'trend-tech', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('game-ar-vr', 'trend-tech', '게임·AR·VR', 'game-ar-vr', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('metaverse-it', 'trend-tech', '메타버스', 'metaverse-it', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('blockchain-nft', 'trend-tech', '블록체인·NFT', 'blockchain-nft', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('job-position', 'it-programming', '직무직군', 'job-position', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ui-ux-planning', 'job-position', 'UI·UX 기획', 'ui-ux-planning', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('frontend-position', 'job-position', '프론트엔드', 'frontend-position', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('backend-position', 'job-position', '백엔드', 'backend-position', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fullstack-position', 'job-position', '풀스택', 'fullstack-position', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-ml-dl', 'job-position', '데이터·ML·DL', 'data-ml-dl', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('devops-infra', 'job-position', '데브옵스·인프라', 'devops-infra', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('it-etc', 'it-programming', '기타', 'it-etc', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('service-mvp-development', 'it-etc', '서비스·MVP 개발', 'service-mvp-development', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('computer-tech-support', 'it-etc', '컴퓨터 기술지원', 'computer-tech-support', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hardware-embedded', 'it-etc', '하드웨어·임베디드', 'hardware-embedded', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('file-conversion', 'it-etc', '파일변환', 'file-conversion', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-programming', 'it-etc', '기타 프로그래밍', 'other-programming', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('marketing', NULL, '마케팅', 'marketing', 'bullhorn', '효과적인 마케팅 전략', 48, false, 90);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('channel-activation', 'marketing', '채널 활성화', 'channel-activation', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('blog-management', 'channel-activation', '블로그 관리', 'blog-management', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cafe-management', 'channel-activation', '카페 관리', 'cafe-management', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('instagram-management', 'channel-activation', '인스타그램 관리', 'instagram-management', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('youtube-management', 'channel-activation', '유튜브 관리', 'youtube-management', NULL, NULL, 0, true, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('reels-shorts-tiktok-management', 'channel-activation', '릴스·숏츠·틱톡 관리', 'reels-shorts-tiktok-management', NULL, NULL, 0, true, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('threads-marketing', 'channel-activation', '스레드 마케팅', 'threads-marketing', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('linkedin-marketing', 'channel-activation', '링크드인 마케팅', 'linkedin-marketing', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-channel-management', 'channel-activation', '기타 채널 관리', 'other-channel-management', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('viral-sponsorship', 'marketing', '바이럴·협찬', 'viral-sponsorship', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('influencer-marketing', 'viral-sponsorship', '인플루언서 마케팅', 'influencer-marketing', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('experience-group-recruitment', 'viral-sponsorship', '체험단 모집', 'experience-group-recruitment', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('viral-posting', 'viral-sponsorship', '바이럴·포스팅', 'viral-posting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('map-marketing', 'marketing', '지도 마케팅', 'map-marketing', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('map-setup', 'map-marketing', '지도 세팅', 'map-setup', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('map-activation', 'map-marketing', '지도 활성화', 'map-activation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('map-optimization-exposure', 'map-marketing', '지도 최적화노출', 'map-optimization-exposure', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('clip-marketing', 'map-marketing', '클립 마케팅', 'clip-marketing', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('industry-purpose', 'marketing', '업종·목적별', 'industry-purpose', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('store-marketing', 'industry-purpose', '스토어 마케팅', 'store-marketing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('press-release', 'industry-purpose', '언론홍보', 'press-release', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('app-marketing', 'industry-purpose', '앱마케팅', 'app-marketing', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('portal-qa', 'industry-purpose', '포털질문·답변', 'portal-qa', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('live-commerce', 'industry-purpose', '라이브커머스', 'live-commerce', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('industry-marketing-package', 'industry-purpose', '업종별 마케팅 패키지', 'industry-marketing-package', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('total-ad-agency', 'industry-purpose', '종합광고대행', 'total-ad-agency', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('db-marketing', 'industry-purpose', 'DB 마케팅', 'db-marketing', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('message-marketing', 'industry-purpose', '메시지 마케팅', 'message-marketing', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('seo-optimization', 'marketing', 'SEO 최적화 노출', 'seo-optimization', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('technical-seo', 'seo-optimization', '테크니컬 SEO', 'technical-seo', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('content-seo', 'seo-optimization', '콘텐츠 SEO', 'content-seo', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('keyword-competitor-analysis', 'seo-optimization', '키워드·경쟁사 분석', 'keyword-competitor-analysis', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('backlink-traffic', 'seo-optimization', '백링크·트래픽', 'backlink-traffic', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('portal-optimization-exposure', 'seo-optimization', '포털 최적화노출', 'portal-optimization-exposure', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('popular-post-management', 'seo-optimization', '인기게시물 관리', 'popular-post-management', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-marketing', 'marketing', '해외 마케팅', 'global-marketing', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-press-release', 'global-marketing', '해외 언론홍보', 'global-press-release', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-store-channel-operation', 'global-marketing', '해외 쇼핑몰·채널 운영', 'global-store-channel-operation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-store-channel-activation', 'global-marketing', '해외 쇼핑몰·채널 활성화', 'global-store-channel-activation', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-influencer-seeding', 'global-marketing', '해외 인플루언서 시딩', 'global-influencer-seeding', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-marketing-etc', 'global-marketing', '기타 해외 마케팅', 'global-marketing-etc', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('performance-ads', 'marketing', '광고(퍼포먼스)', 'performance-ads', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('sns-ads', 'performance-ads', 'SNS 광고', 'sns-ads', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('keyword-search-ads', 'performance-ads', '키워드·검색 광고', 'keyword-search-ads', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('display-video-banner', 'performance-ads', '디스플레이·영상·배너', 'display-video-banner', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('analysis-strategy', 'marketing', '분석·전략', 'analysis-strategy', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('marketing-consulting', 'analysis-strategy', '마케팅 컨설팅', 'marketing-consulting', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('brand-consulting', 'analysis-strategy', '브랜드 컨설팅', 'brand-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-performance-analysis', 'analysis-strategy', '데이터 성과 분석', 'data-performance-analysis', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('marketing-etc', 'marketing', '기타 마케팅', 'marketing-etc', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('outdoor-print-broadcast-ad', 'marketing-etc', '옥외·인쇄·방송 광고', 'outdoor-print-broadcast-ad', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('community-site-banner', 'marketing-etc', '커뮤니티·사이트 배너', 'community-site-banner', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video-ad', 'marketing-etc', '영상 광고', 'video-ad', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('marketing-material-keyword', 'marketing-etc', '마케팅 자료·키워드', 'marketing-material-keyword', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('event-promotion', 'marketing-etc', '행사·이벤트', 'event-promotion', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-marketing', 'marketing-etc', '기타 마케팅', 'other-marketing', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video-photo', NULL, '영상/사진', 'video-photo', 'camera', '영상 제작 및 사진 촬영', 44, false, 85);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video', 'video-photo', '영상', 'video', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ad-promo-video', 'video', '광고·홍보 영상', 'ad-promo-video', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('short-form-video', 'video', '숏폼 영상', 'short-form-video', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('industry-video', 'video', '업종별 영상', 'industry-video', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('product-video', 'video', '제품 영상', 'product-video', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('educational-video', 'video', '교육 영상', 'educational-video', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('event-video', 'video', '행사 영상', 'event-video', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('youtube-video', 'video', '유튜브 영상', 'youtube-video', NULL, NULL, 0, true, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('online-streaming', 'video', '온라인 중계', 'online-streaming', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('drone-filming', 'video', '드론 촬영', 'drone-filming', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video-post-production', 'video', '영상 후반작업', 'video-post-production', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('on-site-staff', 'video', '현장 스탭', 'on-site-staff', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video-etc', 'video', '영상 기타', 'video-etc', NULL, NULL, 0, false, 11);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('computer-graphics', 'video-photo', '컴퓨터 그래픽(CG)', 'computer-graphics', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('motion-graphics', 'computer-graphics', '모션그래픽', 'motion-graphics', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('infographic', 'computer-graphics', '인포그래픽', 'infographic', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('media-art', 'computer-graphics', '미디어 아트', 'media-art', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('intro-logo', 'computer-graphics', '인트로·로고', 'intro-logo', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('typography-cg', 'computer-graphics', '타이포그래피', 'typography-cg', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-modeling-cg', 'computer-graphics', '3D 모델링', '3d-modeling-cg', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ar-vr-xr', 'computer-graphics', 'AR·VR·XR', 'ar-vr-xr', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('animation', 'video-photo', '애니메이션', 'animation', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('2d-animation', 'animation', '2D 애니메이션', '2d-animation', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('3d-animation', 'animation', '3D 애니메이션', '3d-animation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('whiteboard-animation', 'animation', '화이트보드 애니메이션', 'whiteboard-animation', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('lottie-web-animation', 'animation', '로티·web 애니메이션', 'lottie-web-animation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-content', 'video-photo', 'AI 콘텐츠', 'ai-content', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('photography', 'video-photo', '사진', 'photography', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('product-promo-photography', 'photography', '제품·홍보 사진', 'product-promo-photography', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('personal-profile-photography', 'photography', '개인·프로필 사진', 'personal-profile-photography', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('event-snap', 'photography', '이벤트 스냅', 'event-snap', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('photo-retouching', 'photography', '사진 보정', 'photo-retouching', NULL, NULL, 0, true, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audio', 'video-photo', '음향', 'audio', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('voice-actor', 'audio', '성우', 'voice-actor', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('music-source', 'audio', '음악·음원', 'music-source', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audio-content', 'audio', '오디오 콘텐츠', 'audio-content', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audio-engineering', 'audio', '오디오 엔지니어링', 'audio-engineering', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audio-etc', 'audio', '기타 음향·음악', 'audio-etc', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('entertainer', 'video-photo', '엔터테이너', 'entertainer', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('model', 'entertainer', '모델', 'model', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('actor', 'entertainer', '배우', 'actor', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('show-host', 'entertainer', '쇼호스트', 'show-host', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('mc', 'entertainer', 'MC', 'mc', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('performance', 'entertainer', '공연', 'performance', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video-photo-etc', 'video-photo', '기타', 'video-photo-etc', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('storyboard', 'video-photo-etc', '콘티·스토리보드', 'storyboard', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hair-makeup', 'video-photo-etc', '헤어·메이크업', 'hair-makeup', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('studio-rental', 'video-photo-etc', '스튜디오 렌탈', 'studio-rental', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('video-photo-other', 'video-photo-etc', '기타 영상·사진·음향', 'video-photo-other', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('translation', NULL, '번역/통역', 'translation', 'language', '전문 번역 및 통역 서비스', 25, false, 70);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('document-translation', 'translation', '번역', 'document-translation', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('english-translation', 'document-translation', '영어 번역', 'english-translation', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('chinese-translation', 'document-translation', '중국어 번역', 'chinese-translation', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('japanese-translation', 'document-translation', '일본어 번역', 'japanese-translation', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('spanish-translation', 'document-translation', '스페인어 번역', 'spanish-translation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('french-translation', 'document-translation', '프랑스어 번역', 'french-translation', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('german-translation', 'document-translation', '독일어 번역', 'german-translation', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-language-translation', 'document-translation', '기타 언어 번역', 'other-language-translation', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('proofreading', 'document-translation', '감수', 'proofreading', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('notarized-translation', 'document-translation', '번역공증대행', 'notarized-translation', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-translation-review', 'document-translation', 'AI 번역 검수·편집', 'ai-translation-review', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('media-translation', 'translation', '영상 번역', 'media-translation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('subtitle-translation', 'media-translation', '자막 번역', 'subtitle-translation', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('dubbing', 'media-translation', '더빙', 'dubbing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('transcription', 'media-translation', '음성 텍스트 변환', 'transcription', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('professional-translation', 'translation', '전문 분야 번역', 'professional-translation', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('legal-translation', 'professional-translation', '법률 번역', 'legal-translation', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('medical-translation', 'professional-translation', '의료 번역', 'medical-translation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('technical-translation', 'professional-translation', '기술 번역', 'technical-translation', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('academic-translation', 'professional-translation', '학술 번역', 'academic-translation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('interpretation', 'translation', '통역', 'interpretation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('english-interpretation', 'interpretation', '영어 통역', 'english-interpretation', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('chinese-interpretation', 'interpretation', '중국어 통역', 'chinese-interpretation', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('japanese-interpretation', 'interpretation', '일본어 통역', 'japanese-interpretation', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-language-interpretation', 'interpretation', '기타 언어 통역', 'other-language-interpretation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('simultaneous-interpretation', 'interpretation', '동시통역', 'simultaneous-interpretation', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('consecutive-interpretation', 'interpretation', '순차통역', 'consecutive-interpretation', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-interpretation', 'interpretation', '비즈니스 통역', 'business-interpretation', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('writing', NULL, '문서/글쓰기', 'writing', 'pen-fancy', '전문적인 문서 작성 서비스', 32, false, 80);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('content-writing', 'writing', '콘텐츠 글쓰기', 'content-writing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('blog-cafe-manuscript', 'content-writing', '블로그·카페 원고', 'blog-cafe-manuscript', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('script-writing', 'content-writing', '대본 작성', 'script-writing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('press-article-column', 'content-writing', '보도자료·기사·칼럼', 'press-article-column', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('book-ebook-publishing', 'content-writing', '책·전자책 출판', 'book-ebook-publishing', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('industry-specialized-writing', 'content-writing', '산업별 전문 글작성', 'industry-specialized-writing', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-copy', 'writing', '비즈니스 카피', 'business-copy', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('naming-branding', 'business-copy', '네이밍·브랜딩', 'naming-branding', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('product-copywriting', 'business-copy', '제품 카피라이팅', 'product-copywriting', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ad-copywriting', 'business-copy', '광고 카피라이팅', 'ad-copywriting', NULL, NULL, 0, true, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-copywriting', 'business-copy', '기타 카피라이팅', 'other-copywriting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('thesis-research', 'writing', '논문·자료 조사', 'thesis-research', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('thesis-consulting', 'thesis-research', '논문 컨설팅', 'thesis-consulting', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('thesis-editing-proofreading', 'thesis-research', '논문 교정·편집', 'thesis-editing-proofreading', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('thesis-statistics-analysis', 'thesis-research', '논문 통계분석', 'thesis-statistics-analysis', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-research', 'thesis-research', '자료 조사', 'data-research', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('typing-editing', 'writing', '타이핑·편집', 'typing-editing', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('typing-document', 'typing-editing', '타이핑(문서)', 'typing-document', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('typing-video', 'typing-editing', '타이핑(영상)', 'typing-video', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('document-editing', 'typing-editing', '문서 편집', 'document-editing', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('proofreading-revision', 'writing', '교정·첨삭', 'proofreading-revision', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('proofreading-correction', 'proofreading-revision', '교정·교열 첨삭', 'proofreading-correction', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ai-writing', 'writing', 'AI 글쓰기', 'ai-writing', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-documents', 'writing', '비즈니스 문서', 'business-documents', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-plan', 'business-documents', '사업계획서', 'business-plan', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('proposal-writing', 'business-documents', '제안서 작성', 'proposal-writing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('report-writing', 'business-documents', '보고서 작성', 'report-writing', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('presentation', 'business-documents', '프레젠테이션', 'presentation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cv-resume', 'business-documents', '이력서/자소서', 'cv-resume', NULL, NULL, 0, true, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('academic-documents', 'writing', '학술 문서', 'academic-documents', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('research-paper', 'academic-documents', '연구 보고서', 'research-paper', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('essay-writing', 'academic-documents', '에세이', 'essay-writing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('creative-writing', 'writing', '창작 글쓰기', 'creative-writing', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('novel-writing', 'creative-writing', '소설', 'novel-writing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('scenario-writing', 'creative-writing', '시나리오', 'scenario-writing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('webtoon-story', 'creative-writing', '웹툰 스토리', 'webtoon-story', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('poetry', 'creative-writing', '시/수필', 'poetry', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('writing-etc', 'writing', '기타', 'writing-etc', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-writing', 'writing-etc', '기타 글쓰기', 'other-writing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('document-materials', 'writing-etc', '문서 자료', 'document-materials', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('music-audio', NULL, '음악/오디오', 'music-audio', 'music', '음악 제작 및 오디오 서비스', 10, false, 65);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('music-production', 'music-audio', '음악 제작', 'music-production', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('music-composition', 'music-production', '작곡', 'music-composition', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('music-arrangement', 'music-production', '편곡', 'music-arrangement', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('bgm-production', 'music-production', 'BGM 제작', 'bgm-production', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('jingle-production', 'music-production', '징글/CM송', 'jingle-production', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audio-production', 'music-audio', '오디오 작업', 'audio-production', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('mixing-mastering', 'audio-production', '믹싱/마스터링', 'mixing-mastering', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('sound-effects', 'audio-production', '효과음 제작', 'sound-effects', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audio-editing', 'audio-production', '오디오 편집', 'audio-editing', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('podcast-editing', 'audio-production', '팟캐스트 편집', 'podcast-editing', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('voice-narration', 'music-audio', '보이스/나레이션', 'voice-narration', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('voice-over', 'voice-narration', '성우/나레이션', 'voice-over', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ars-recording', 'voice-narration', 'ARS 녹음', 'ars-recording', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('audiobook', 'voice-narration', '오디오북', 'audiobook', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business', NULL, '비즈니스', 'business', 'briefcase', '비즈니스 성장을 위한 전문 서비스', 42, false, 78);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('corporate-consulting', 'business', '기업 자문', 'corporate-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('sales-consulting', 'corporate-consulting', '세일즈', 'sales-consulting', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('general-management-consulting', 'corporate-consulting', '일반 경영 자문', 'general-management-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('branding-consulting', 'corporate-consulting', '브랜딩', 'branding-consulting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('logistics-production', 'corporate-consulting', '물류·생산', 'logistics-production', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hr-corporate-culture', 'corporate-consulting', 'HR·기업문화', 'hr-corporate-culture', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('global-business', 'corporate-consulting', '해외 사업·해외 진출', 'global-business', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('it-consulting', 'corporate-consulting', 'IT 컨설팅', 'it-consulting', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('financial-consulting', 'corporate-consulting', '재무 자문', 'financial-consulting', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('operation-support', 'corporate-consulting', '운영 지원', 'operation-support', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('industry-startup', 'business', '업종별 창업', 'industry-startup', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('online-store-startup', 'industry-startup', '온라인 쇼핑몰 창업', 'online-store-startup', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cafe-restaurant-startup', 'industry-startup', '카페·요식업 창업', 'cafe-restaurant-startup', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fashion-startup', 'industry-startup', '패션 창업', 'fashion-startup', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('beauty-care-startup', 'industry-startup', '미용·뷰티케어 창업', 'beauty-care-startup', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('health-food-startup', 'industry-startup', '건강기능식품 창업', 'health-food-startup', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cosmetics-startup', 'industry-startup', '화장품 창업', 'cosmetics-startup', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hospital-pharmacy-startup', 'industry-startup', '병원·약국 창업', 'hospital-pharmacy-startup', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('franchise-startup', 'industry-startup', '프랜차이즈 창업', 'franchise-startup', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('unmanned-space-rental-startup', 'industry-startup', '무인점포·공간대여 창업', 'unmanned-space-rental-startup', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pet-startup', 'industry-startup', '반려동물 창업', 'pet-startup', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-startup', 'industry-startup', '기타 창업', 'other-startup', NULL, NULL, 0, false, 10);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('startup-consulting', 'business', '스타트업 자문', 'startup-consulting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('vision-mission-branding', 'startup-consulting', '비전·미션·초기 브랜딩', 'vision-mission-branding', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('personal-org-goal-management', 'startup-consulting', '개인·조직 목표 관리', 'personal-org-goal-management', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('startup-hr-consulting', 'startup-consulting', '스타트업 인사 자문', 'startup-hr-consulting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('startup-investment-attraction', 'startup-consulting', '스타트업 투자 유치', 'startup-investment-attraction', NULL, NULL, 0, true, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('consulting', 'business', '컨설팅', 'consulting', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('startup-consulting-general', 'consulting', '창업 컨설팅', 'startup-consulting-general', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('management-consulting', 'consulting', '경영 컨설팅', 'management-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hr-consulting', 'consulting', '인사 컨설팅', 'hr-consulting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('finance-accounting', 'business', '재무/회계', 'finance-accounting', NULL, NULL, 0, false, 5);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('bookkeeping', 'finance-accounting', '장부 기장', 'bookkeeping', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tax-service', 'finance-accounting', '세무 서비스', 'tax-service', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('financial-planning', 'finance-accounting', '재무 설계', 'financial-planning', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('investment-consulting', 'finance-accounting', '투자 컨설팅', 'investment-consulting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('legal-services', 'business', '법률 서비스', 'legal-services', NULL, NULL, 0, false, 6);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('legal-consulting', 'legal-services', '법률 자문', 'legal-consulting', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('patent-trademark', 'legal-services', '특허/상표', 'patent-trademark', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('contract-drafting', 'legal-services', '계약서 작성', 'contract-drafting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-support', 'business', '비즈니스 지원', 'business-support', NULL, NULL, 0, false, 7);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('virtual-assistant', 'business-support', '가상 비서', 'virtual-assistant', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('data-entry', 'business-support', '데이터 입력', 'data-entry', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('market-research', 'business-support', '시장 조사', 'market-research', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-materials', 'business', '자료·콘텐츠', 'business-materials', NULL, NULL, 0, false, 8);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-etc', 'business', '기타', 'business-etc', NULL, NULL, 0, false, 9);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-consulting-support', 'business-etc', '기타 자문·지원', 'other-consulting-support', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('lifestyle', NULL, '라이프스타일', 'lifestyle', 'book', '삶의 질을 높이는 서비스', 20, false, 11);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('online-lessons', 'lifestyle', '온라인 레슨', 'online-lessons', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('language-lesson', 'online-lessons', '외국어 레슨', 'language-lesson', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('music-lesson', 'online-lessons', '음악 레슨', 'music-lesson', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('art-lesson', 'online-lessons', '미술 레슨', 'art-lesson', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('cooking-lesson', 'online-lessons', '요리 레슨', 'cooking-lesson', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('coding-lesson', 'online-lessons', '코딩 레슨', 'coding-lesson', NULL, NULL, 0, true, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('health-wellness', 'lifestyle', '건강/웰니스', 'health-wellness', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fitness-training', 'health-wellness', '피트니스 트레이닝', 'fitness-training', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('diet-consulting', 'health-wellness', '다이어트 상담', 'diet-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('yoga-pilates', 'health-wellness', '요가/필라테스', 'yoga-pilates', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('meditation', 'health-wellness', '명상', 'meditation', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('coaching-counseling', 'lifestyle', '코칭/상담', 'coaching-counseling', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('life-coaching', 'coaching-counseling', '라이프 코칭', 'life-coaching', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('career-coaching', 'coaching-counseling', '커리어 코칭', 'career-coaching', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('relationship-counseling', 'coaching-counseling', '연애 상담', 'relationship-counseling', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('psychological-counseling', 'coaching-counseling', '심리 상담', 'psychological-counseling', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('astrology-fortune', 'lifestyle', '운세/타로', 'astrology-fortune', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tarot-reading', 'astrology-fortune', '타로 리딩', 'tarot-reading', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fortune-telling', 'astrology-fortune', '사주/운세', 'fortune-telling', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('naming-service', 'astrology-fortune', '작명', 'naming-service', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('event', NULL, '이벤트', 'event', 'calendar', '특별한 날을 위한 서비스', 14, false, 12);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('event-planning', 'event', '행사 기획', 'event-planning', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('wedding-planning', 'event-planning', '웨딩 플래닝', 'wedding-planning', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('birthday-party', 'event-planning', '생일 파티', 'birthday-party', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('corporate-event', 'event-planning', '기업 행사', 'corporate-event', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('seminar-conference', 'event-planning', '세미나/컨퍼런스', 'seminar-conference', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('event-services', 'event', '행사 서비스', 'event-services', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('mc-hosting', 'event-services', '사회/진행', 'mc-hosting', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('dj-service', 'event-services', 'DJ 서비스', 'dj-service', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('catering', 'event-services', '케이터링', 'catering', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hobby-handmade', NULL, '취미/핸드메이드', 'hobby-handmade', 'scissors', '취미 활동과 수제 작품', 23, false, 13);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('handmade-craft', 'hobby-handmade', '핸드메이드', 'handmade-craft', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('custom-goods', 'handmade-craft', '맞춤 제작', 'custom-goods', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('jewelry-making', 'handmade-craft', '액세서리', 'jewelry-making', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('pottery', 'handmade-craft', '도자기', 'pottery', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('knitting', 'handmade-craft', '뜨개질', 'knitting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('gift-items', 'hobby-handmade', '선물/기념품', 'gift-items', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('personalized-gift', 'gift-items', '개인화 선물', 'personalized-gift', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('gift-wrapping', 'gift-items', '선물 포장', 'gift-wrapping', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('flower-arrangement', 'gift-items', '꽃꽂이', 'flower-arrangement', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('gaming', 'hobby-handmade', '게임', 'gaming', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('game-coaching', 'gaming', '게임 코칭', 'game-coaching', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('game-leveling', 'gaming', '레벨링 대행', 'game-leveling', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('game-account', 'gaming', '게임 계정', 'game-account', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('beauty-fashion', NULL, '뷰티/패션', 'beauty-fashion', 'spa', '뷰티와 패션 관련 서비스', 14, false, 14);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('beauty-services', 'beauty-fashion', '뷰티 서비스', 'beauty-services', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('makeup', 'beauty-services', '메이크업', 'makeup', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('hair-styling', 'beauty-services', '헤어 스타일링', 'hair-styling', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('nail-art', 'beauty-services', '네일아트', 'nail-art', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fashion-styling', 'beauty-fashion', '패션 스타일링', 'fashion-styling', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('personal-color', 'fashion-styling', '퍼스널 컬러', 'personal-color', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('styling-consulting', 'fashion-styling', '스타일링 컨설팅', 'styling-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('counseling-coaching', NULL, '상담/코칭', 'counseling-coaching', 'bullseye', '전문적인 상담과 코칭', 14, false, 15);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('fortune-tarot', NULL, '운세/타로', 'fortune-tarot', 'star', '운세와 타로 상담', 16, false, 16);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ebook-template', NULL, '전자책/템플릿', 'ebook-template', 'book-open', '전자책과 각종 템플릿', 15, false, 17);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ebook', 'ebook-template', '전자책', 'ebook', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ebook-creation', 'ebook', '전자책 제작', 'ebook-creation', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ebook-publishing', 'ebook', '전자책 출판', 'ebook-publishing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('templates', 'ebook-template', '템플릿', 'templates', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ppt-template', 'templates', 'PPT 템플릿', 'ppt-template', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('excel-template', 'templates', '엑셀 템플릿', 'excel-template', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('notion-template', 'templates', '노션 템플릿', 'notion-template', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tax-legal-labor', NULL, '세무/법무/노무', 'tax-legal-labor', 'gavel', '세무, 법률, 노무 전문 서비스', 16, false, 18);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('legal-service', 'tax-legal-labor', '법무', 'legal-service', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-legal-consulting', 'legal-service', '사업자 법률 자문', 'business-legal-consulting', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('personal-legal-consulting', 'legal-service', '개인 법률 자문', 'personal-legal-consulting', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('legal-administration', 'legal-service', '법무·행정', 'legal-administration', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('contract-review', 'legal-service', '계약서 검토', 'contract-review', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tax-accounting', 'tax-legal-labor', '세무·회계', 'tax-accounting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-tax-accounting', 'tax-accounting', '사업자 세무·회계', 'business-tax-accounting', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('personal-tax-accounting', 'tax-accounting', '개인 세무·회계', 'personal-tax-accounting', NULL, NULL, 0, true, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tax-return', 'tax-accounting', '세금 신고', 'tax-return', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tax-consulting', 'tax-accounting', '세무 상담', 'tax-consulting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('intellectual-property', 'tax-legal-labor', '지식재산권 보호', 'intellectual-property', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('domestic-patent-trademark', 'intellectual-property', '국내 특허·상표', 'domestic-patent-trademark', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-intellectual-property', 'intellectual-property', '기타 지식재산권', 'other-intellectual-property', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('labor-service', 'tax-legal-labor', '노무', 'labor-service', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('employer-labor-consulting', 'labor-service', '고용인 노무 상담', 'employer-labor-consulting', NULL, NULL, 0, true, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('worker-labor-consulting', 'labor-service', '근로자 노무 상담', 'worker-labor-consulting', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('employment-contract-consulting', 'labor-service', '근로계약서 상담', 'employment-contract-consulting', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('employment-subsidy-consulting', 'labor-service', '고용지원금 상담', 'employment-subsidy-consulting', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('tax-legal-labor-etc', 'tax-legal-labor', '기타', 'tax-legal-labor-etc', NULL, NULL, 0, false, 4);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-consulting-customs', 'tax-legal-labor-etc', '기타 자문(관세사 등)', 'other-consulting-customs', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('custom-order', NULL, '주문제작', 'custom-order', 'hammer', '맞춤형 주문 제작 서비스', 13, false, 19);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('printing-materials', 'custom-order', '인쇄물', 'printing-materials', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-card-printing', 'printing-materials', '명함 인쇄', 'business-card-printing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('poster-printing', 'printing-materials', '포스터 인쇄', 'poster-printing', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('custom-order-etc', 'custom-order', '기타', 'custom-order-etc', NULL, NULL, 0, false, 3);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('other-custom-order', 'custom-order-etc', '기타 주문제작', 'other-custom-order', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('career-admission', NULL, '취업/입시', 'career-admission', 'graduation-cap', '취업과 입시 준비 서비스', 14, false, 20);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('job-preparation', 'career-admission', '취업 준비', 'job-preparation', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('resume-writing', 'job-preparation', '이력서 작성', 'resume-writing', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('interview-coaching', 'job-preparation', '면접 코칭', 'interview-coaching', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('portfolio-making', 'job-preparation', '포트폴리오 제작', 'portfolio-making', NULL, NULL, 0, false, 2);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('admission-prep', 'career-admission', '입시 준비', 'admission-prep', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('college-consulting', 'admission-prep', '대입 컨설팅', 'college-consulting', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('job-skills', NULL, '직무역량', 'job-skills', 'chart-line', '직무 능력 향상 서비스', 16, false, 21);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('office-skills', 'job-skills', '오피스 스킬', 'office-skills', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('excel-training', 'office-skills', '엑셀 교육', 'excel-training', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('ppt-training', 'office-skills', 'PPT 교육', 'ppt-training', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('business-skills', 'job-skills', '비즈니스 스킬', 'business-skills', NULL, NULL, 0, false, 1);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('presentation-skill', 'business-skills', '프레젠테이션', 'presentation-skill', NULL, NULL, 0, false, 0);
INSERT INTO categories (id, parent_id, name, slug, icon_emoji, description, service_count, is_popular, display_order)
VALUES ('negotiation-skill', 'business-skills', '협상 스킬', 'negotiation-skill', NULL, NULL, 0, false, 1);

-- ================================================
-- 변환 완료
-- 총 598개 카테고리 생성됨
-- ================================================
