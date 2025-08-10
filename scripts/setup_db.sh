DB_FILE="job_tracker.db"

#Check if database exists
if [ ! -f "$DB_FILE" ]; then
	echo "Database file not found. Creating $DB_FILE..."
	sqlite3 "$DB_FILE" "CREATE TABLE applications (
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		company TEXT NOT NULL,
		position TEXT NOT NULL,
		date_applied TEXT NOT NULL,
		status TEXT NOT NULL
	);"
	echo "Database and table created!"
else
	#Check if the appliaction table exists
	TABLE_EXISTS=$(sqlite3 "$DB_FILE" "SELECT name FROM sqlite_master WHERE type='table' AND name='applications'; ")	
	if [ -z "$TABLE_EXISTS" ]; then
		echo "Table 'applications' not found. Creting table..."
		sqlite3 "$DB_FILE" "CREATE TABLE applications (
			id INTEGER PRIMARY KEY AUTOINCREMENT,
			company TEXT NOT NULL,
			position TEXT NOT NULL,
			date_applied TEXT NOT NULL,
			status TEXT NOT NULL
		);"
		echo "Table created!"
	else
		echo "Database and table already exists"
	fi
fi

