#!/bin/bash

LOG="/opt/support-lab/logs/payment-api.log"

if [ ! -f "$LOG" ]; then
    echo "ERROR: Log file not found"
    exit 1
fi

echo "=================================="
echo " PAYMENT API INCIDENT REPORT"
echo "=================================="

echo "Total log entries:"
wc -l < "$LOG"

echo "ERROR entries:"
grep -c " ERROR " "$LOG" || true

echo "HTTP 500 entries:"
grep -c "status=500" "$LOG" || true

echo "HTTP 504 entries:"
grep -c "status=504" "$LOG" || true

echo "Affected transactions:"
grep -E "status=(500|504)" "$LOG" | grep -oE "TXN-[0-9]+" | sort -u

echo "Latest five events:"
tail -n 5 "$LOG"

echo "=================================="
echo " Investigation complete"
echo "=================================="
