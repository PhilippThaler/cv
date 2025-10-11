#!/bin/bash

# =====================================================================
# START-SKRIPT FÜR DEN TYPST CV WORKFLOW (ALLE IN TABS)
# =====================================================================

# --- 1. KONFIGURATION & PFAD-ERMITTLUNG ---
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Konfiguration
TMUX_SESSION="cv-multilang"
WORKSPACE_ID="4"
KITTY_PATH="/usr/bin/kitty"      # <-- PFAD ZU KITTY HIER ANPASSEN
TERMINAL_TITLE="typst-workflow"

PDF_DE="$PROJECT_DIR/CV_de.pdf"
PDF_EN="$PROJECT_DIR/CV_en.pdf"

# Pfad zum Wrapper-Skript
CLEANUP_SCRIPT="$PROJECT_DIR/tmux_cleanup.sh"

# --- 2. BEREINIGUNG & TMUX-SETUP ---
echo "--- Starte Bereinigung und Tmux-Setup ---"

# Bereinigung alter Prozesse (Nur falls das letzte Setup fehlschlug)
pkill -f "zathura $PDF_DE"
pkill -f "zathura $PDF_EN"
tmux kill-session -t "$TMUX_SESSION" 2>/dev/null

# Tmux-Setup
tmux new-session -d -s "$TMUX_SESSION"
tmux send-keys -t "$TMUX_SESSION:0.0" "typst watch cv.typ CV_de.pdf --input lang=de" C-m
tmux split-window -t "$TMUX_SESSION:0.0"
tmux send-keys -t "$TMUX_SESSION:0.1" "typst watch cv.typ CV_en.pdf --input lang=en" C-m
tmux select-layout -t "$TMUX_SESSION" even-vertical
echo "Typst Watcher gestartet."

# --- 3. LAYOUT-EINRICHTUNG (i3/Sway) ---

echo "--- i3/Sway Tabbed Layout wird eingerichtet ---"

i3-msg workspace number "$WORKSPACE_ID"

# 3a. Starten Sie Zathura DE 
i3-msg exec "zathura $PDF_DE &"
sleep 0.5 

# 3b. Ändern Sie das Layout des Containers auf Tabbed (erstellt den "Stack")
i3-msg layout tabbed

# 3c. Zathura EN starten (Fügt sich als zweiter Tab hinzu)
i3-msg exec "zathura $PDF_EN &"
sleep 0.2

# 3d. START DES CLEANUP-WRAPPERS (Fügt sich als dritter Tab hinzu)
# Das Terminal führt jetzt das Wrapper-Skript aus und beendet alle Prozesse, 
# sobald die Tmux-Session geschlossen wird.
i3-msg exec "$KITTY_PATH --title \"$TERMINAL_TITLE\" -e $CLEANUP_SCRIPT $TMUX_SESSION $PDF_DE $PDF_EN &"

# 3e. Fokus zurück auf das erste Zathura-Fenster legen
i3-msg [title="$PDF_DE"] focus

echo "Setup vollständig: Drei Tabs (2x Zathura, 1x Tmux) im Stack erstellt."
