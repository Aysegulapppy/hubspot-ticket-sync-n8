# HubSpot Ticket Sync with n8n

A RevOps and CX Operations automation project that retrieves HubSpot tickets, transforms the API response, and synchronizes the records with PostgreSQL.

## Project Overview

This workflow connects to the HubSpot CRM API, retrieves ticket records, normalizes the response with JavaScript, and stores the results in PostgreSQL.

The workflow uses an UPSERT operation, allowing existing tickets to be updated without creating duplicate records.

## Workflow

```text
Manual Trigger
→ HubSpot Tickets API
→ JavaScript Transformation
→ PostgreSQL UPSERT
```

## Tech Stack

- n8n
- HubSpot CRM API
- PostgreSQL
- JavaScript
- Docker

## Features

- Retrieves ticket records from HubSpot
- Selects relevant ticket properties
- Normalizes API responses
- Handles missing and null values
- Inserts new tickets into PostgreSQL
- Updates existing tickets
- Prevents duplicate ticket records
- Supports ticket reporting queries

## Ticket Properties

The workflow synchronizes the following fields:

- HubSpot ticket ID
- Subject
- Pipeline stage
- Priority
- Category
- Created date
- Closed date
- Updated date
- Archived status
- Ticket URL

## Repository Structure

```text
hubspot-ticket-sync-n8n/
├── README.md
├── workflow/
│   └── hubspot-ticket-sync.json
└── sql/
    ├── create_table.sql
    └── reporting_queries.sql
```

## Setup

1. Create a HubSpot private app with ticket read access.
2. Configure the HubSpot API request in n8n.
3. Create the PostgreSQL table using `sql/create_table.sql`.
4. Configure PostgreSQL credentials in n8n.
5. Import the workflow JSON file.
6. Run the workflow.

## Security

Credentials and access tokens are not included in this repository.

Users must configure their own HubSpot and PostgreSQL credentials in n8n.

## Future Improvements

- Scheduled ticket synchronization
- Pagination for larger ticket volumes
- Ticket health scoring
- Slack escalation notifications
- Dashboard integration
- Automatic error handling
