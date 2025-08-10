# Job Tracker CLI

A simple command-line tool to track your job applications, built with Bash scripts and SQLite.

---

## Features

- Add new job applications with company name, position, date applied, and status
- Store application data in a SQLite database
- (Future) List, update, and delete job applications

---

## Setup

1. Clone the repository:

```bash
git clone https://github.com/yourusername/job-tracker.git
cd job-tracker


2. Make scripts executable

chmod +x scripts/setup_db.sh
chmod +x scripts/add_application_sql.sh

3. Initialize the database and the table

./scripts/setup_db.sh

4. Run application

./scripts/add_application_sql.sh

You will be asked to enter company name and position
