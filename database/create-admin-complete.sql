-- ================================================
-- 관리자 계정 자동 생성 (완전 자동화)
-- ================================================

-- 1. Supabase Auth에 사용자 생성
-- 주의: auth schema에 직접 접근 권한이 필요합니다
DO $$
DECLARE
  user_id uuid;
BEGIN
  -- UUID 생성
  user_id := extensions.uuid_generate_v4();

  -- auth.users에 직접 삽입 (Supabase에서 권한이 있을 경우)
  INSERT INTO auth.users (
    instance_id,
    id,
    aud,
    role,
    email,
    encrypted_password,
    email_confirmed_at,
    invited_at,
    confirmation_token,
    confirmation_sent_at,
    recovery_token,
    recovery_sent_at,
    email_change_token_new,
    email_change,
    email_change_sent_at,
    last_sign_in_at,
    raw_app_meta_data,
    raw_user_meta_data,
    is_super_admin,
    created_at,
    updated_at,
    phone,
    phone_confirmed_at,
    phone_change,
    phone_change_token,
    phone_change_sent_at,
    email_change_token_current,
    email_change_confirm_status,
    banned_until,
    reauthentication_token,
    reauthentication_sent_at
  ) VALUES (
    '00000000-0000-0000-0000-000000000000',
    user_id,
    'authenticated',
    'authenticated',
    'ohyus1197@gmail.com',
    crypt('chl1197dbA!@', gen_salt('bf')), -- 비밀번호 암호화
    NOW(),
    NULL,
    '',
    NULL,
    '',
    NULL,
    '',
    '',
    NULL,
    NULL,
    '{"provider":"email","providers":["email"]}',
    '{"shop_id":"king","shop_name":"코드왕"}',
    false,
    NOW(),
    NOW(),
    NULL,
    NULL,
    '',
    '',
    NULL,
    '',
    0,
    NULL,
    '',
    NULL
  );

  -- public.users 테이블에 프로필 추가
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
    user_id,
    'ohyus1197@gmail.com',
    'king',
    '코드왕',
    'both',
    true,
    NOW(),
    NOW()
  );

  RAISE NOTICE 'User created with ID: %', user_id;
END $$;

-- ================================================
-- 완료!
-- ================================================
