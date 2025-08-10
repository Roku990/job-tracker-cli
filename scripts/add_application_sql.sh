echo "Enter company name:"
read company
echo "Enter position:"
read position
date_applied=$(date +"%Y-%m-%d")
status="Applied"

sqlite3 job_tracker.db "INSERT INTO applications (company, position, date_applied, status) VALUES ('$company','$position','$date_applied','$status');"
echo "Application added to database!"

