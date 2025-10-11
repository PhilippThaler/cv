#!/bin/bash

TMUX_SESSION="$1"
PDF_DE="$2"
PDF_EN="$3"

# --- 1. Die Haupt-Cleanup-Funktion ---
cleanup() {
    echo "--- Starte Cleanup-Routine (durch Schließen des Fensters ausgelöst) ---"
    
    # Zathura-Fenster schließen
    pkill -f "zathura $PDF_DE"
    pkill -f "zathura $PDF_EN"
    echo "Zathura-Fenster geschlossen."

    # Tmux-Session killen, falls sie noch läuft (stoppt typst watch)
    tmux kill-session -t "$TMUX_SESSION" 2>/dev/null
    echo "Tmux-Session beendet."
    
    # Exit, um das Terminalfenster zu schließen
    exit 0
}

# --- 2. TRAP: Fängt das SIGHUP-Signal ab (wird beim Schließen des Terminals gesendet) ---
# WICHTIG: Wenn der Benutzer das Terminalfenster schließt, wird die Cleanup-Funktion aufgerufen.
trap cleanup SIGHUP EXIT

echo "--- Tmux-Sitzung gestartet. Schließen Sie dieses Terminalfenster, um alle Prozesse zu beenden. ---"

# 3. Attach zur Tmux-Session. (Wenn der Benutzer 'tmux kill-session' eingibt, endet das Skript hier.)
tmux attach-session -t "$TMUX_SESSION"

# 4. Wenn 'tmux attach' beendet wird, führen wir die Bereinigung aus.
# (Dies fängt den Fall ab, in dem der Benutzer 'tmux kill-session' im Pane eingibt.)
cleanup
