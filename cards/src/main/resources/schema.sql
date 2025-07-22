CREATE SCHEMA IF NOT EXISTS cards;

CREATE TABLE IF NOT EXISTS cards (
  card_id SERIAL PRIMARY KEY,
  mobile_number VARCHAR(15) NOT NULL,
  card_number VARCHAR(100) NOT NULL UNIQUE,
  card_type VARCHAR(50) NOT NULL,
  total_limit INTEGER NOT NULL CHECK (total_limit >= 0),
  amount_used INTEGER NOT NULL DEFAULT 0 CHECK (amount_used >= 0),
  available_amount INTEGER NOT NULL DEFAULT 0 CHECK (available_amount >= 0),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(50) NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_by VARCHAR(50)
);