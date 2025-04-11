#!/bin/bash

# Database credentials
DB_HOST="localhost"
DB_USER="myuser"
DB_PASSWORD="mypassword"
DB_NAME="sales"
TABLE_NAME="sales_data"
OUTPUT_FILE="sales_data.sql"

# Export the table to a .sql file using mysqldump
mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" "$TABLE_NAME" > "$OUTPUT_FILE"

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "Data successfully exported to $OUTPUT_FILE"
else
    echo "Error exporting data"
fi
