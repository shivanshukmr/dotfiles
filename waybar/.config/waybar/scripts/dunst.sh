#!/bin/sh

COUNT=$(dunstctl count waiting)
ENABLED=
DISABLED=

if [ $COUNT -ne 0 ]; then DISABLED=""; fi

case "$(dunstctl is-paused)" in
    false) echo "$ENABLED" ;;
    *)     echo "$DISABLED" ;;
esac
