CREATE TABLE IF NOT EXISTS hubspot_tickets (
    hubspot_id VARCHAR(50) PRIMARY KEY,
    subject TEXT,
    pipeline_stage TEXT,
    priority TEXT,
    category TEXT,
    created_at TIMESTAMP,
    closed_at TIMESTAMP,
    updated_at TIMESTAMP,
    archived BOOLEAN DEFAULT FALSE,
    ticket_url TEXT,
    synced_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
