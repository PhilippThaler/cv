#!/bin/bash

SESSION_NAME="cv-multilang"

echo "Beende alle Typst Watch Prozesse..."
# Beendet zuerst die unabhängigen/verwaisten Prozesse
pkill typst

echo "Beende die Tmux-Sitzung '$SESSION_NAME'..."
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    tmux kill-session -t $SESSION_NAME
    echo "Tmux-Session erfolgreich beendet."
else
    echo "Tmux-Session '$SESSION_NAME' war nicht aktiv."
fi
