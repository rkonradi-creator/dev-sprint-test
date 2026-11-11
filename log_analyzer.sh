#!/bin/bash

LOG_FILE="server.log"

if [! -f "$LOG_FILE"]; then
echo "Файл $LOG_FILE не найден!"
exit 1
fi

ERRORS_COUNT=$(grep -c "ERROR" "$LOG_FILE")
WARNINGS_COUNT=$(grep -c "WARNING" "$LOG_FILE")

echo "=== Отчет по логам ==="
echo "Найдено ошибок (ERROR): $ERRORS_COUNT"
echo "Найдено предупреждений (WARNING): $WARNINGS_COUNT"
echo "----------------------"
echo "Список последних ошибок:"
grep "ERROR" "$LOG_FILE"