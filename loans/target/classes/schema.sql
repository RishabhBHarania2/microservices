CREATE SCHEMA IF NOT EXISTS accounts;

-- Create loans table in 'accounts' schema
CREATE TABLE IF NOT EXISTS accounts.loans (
  loan_id SERIAL PRIMARY KEY,
  mobile_number VARCHAR(15) NOT NULL,
  loan_number VARCHAR(100) NOT NULL UNIQUE,
  loan_type VARCHAR(50) NOT NULL,
  total_loan INTEGER NOT NULL CHECK (total_loan >= 0),
  amount_paid INTEGER NOT NULL DEFAULT 0 CHECK (amount_paid >= 0),
  outstanding_amount INTEGER NOT NULL DEFAULT 0 CHECK (outstanding_amount >= 0),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(50) NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_by VARCHAR(50)
);