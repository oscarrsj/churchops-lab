-- =====================================================
-- Seed data for services table (development/testing)
-- =====================================================

-- IMPORTANT:
-- Replace :USER_ID with a real user id from auth.users
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
    :USER_ID
),
(
    '2026-02-04',
    '20:00',
    'Prayer Meeting',
    'Weekly prayer service',
    :USER_ID
),
(
    '2026-02-07',
    '18:30',
    'Youth Service',
    'Youth gathering',
    :USER_ID
);
