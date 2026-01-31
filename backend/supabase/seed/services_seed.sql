-- =====================================================
-- Seed data for services table (development/testing)
-- =====================================================

-- IMPORTANT:
-- Replace '49072d14-0eff-45ae-b621-43bf10b5b473' with a real user id from auth.users
-- Example:
-- select id from auth.users;

insert into public.services (
    service_date,
    service_time,
    service_type,
    notes,
    created_by
) values
(
    '2026-02-01',
    '19:00',
    'Sunday Service',
    'Evening service',
    '49072d14-0eff-45ae-b621-43bf10b5b473'
),
(
    '2026-02-04',
    '20:00',
    'Prayer Meeting',
    'Weekly prayer service',
    '49072d14-0eff-45ae-b621-43bf10b5b473'
),
(
    '2026-02-07',
    '18:30',
    'Youth Service',
    'Youth gathering',
    '49072d14-0eff-45ae-b621-43bf10b5b473'
);
