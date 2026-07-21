-- View all synchronized tickets

SELECT *
FROM hubspot_tickets
ORDER BY created_at DESC;


-- Ticket health summary

SELECT
    COUNT(*) AS total_tickets,
    COUNT(*) FILTER (
        WHERE closed_at IS NULL
    ) AS open_tickets,
    COUNT(*) FILTER (
        WHERE closed_at IS NOT NULL
    ) AS closed_tickets,
    COUNT(*) FILTER (
        WHERE priority IS NULL
    ) AS missing_priority,
    COUNT(*) FILTER (
        WHERE category IS NULL
    ) AS missing_category
FROM hubspot_tickets;
