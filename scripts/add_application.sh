

echo "Enter company name:"

read company

echo "Enter position:"

read position

date_applied=$(date +"%Y-%m-%d")
status="Applied"

echo "$company,$position,$date_applied,$status" >> data/application.csv

echo "Application added!"
