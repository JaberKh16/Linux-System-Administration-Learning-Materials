#!/bin/bash


# === CONFIGURATION ===
DB_HOST="remote.example.com"
DB_USER="dbuser"
DB_PASS="dbpassword"
DB_NAME="mydb"
BACKUP_DIR="/home/youruser/db_backups"
LOG_DIR="$BACKUP_DIR/logs"
DATE=$(date +%F)
TIME=$(date +%T)
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_$DATE.sql"
LOG_FILE="$LOG_DIR/backup_${DATE}.log"
MAIL="you@example.com"

# === ENSURE BACKUP AND LOG DIRECTORIES EXIST ===
if [ ! -d "$BACKUP_DIR" ]; then
    echo "[$DATE $TIME] Backup directory not found. Creating: $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
fi

if [ ! -d "$LOG_DIR" ]; then
    echo "[$DATE $TIME] Log directory not found. Creating: $LOG_DIR"
    mkdir -p "$LOG_DIR"
fi

# === RUN BACKUP ===
echo "[$DATE $TIME] Starting backup for $DB_NAME..." >> "$LOG_FILE"
mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_FILE" 2>> "$LOG_FILE"

# === VERIFY BACKUP SUCCESS ===
if [ -s "$BACKUP_FILE" ]; then
    echo "[$DATE $TIME] SUCCESS: Backup completed. File: $BACKUP_FILE" >> "$LOG_FILE"
    echo "Backup successfully: $BACKUP_FILE" | mail -s "DB Backup Success" "$MAIL"
else
    echo "[$DATE $TIME] ERROR: Backup failed or empty file: $BACKUP_FILE" >> "$LOG_FILE"
    echo "Backup failed or is empty: $BACKUP_FILE" | mail -s "DB Backup Error" "$MAIL"
fi


# in crontab
# open crontab with `crontab -e`
# add the following line to run the script every day at 2 AM
# 0 2 * * * /path/to/your/script.sh >> /path/to
# 0 2 * * * /home/youruser/scripts/remote_db_backup.sh >> /home/youruser/db_backups/backup.log 2>&1
