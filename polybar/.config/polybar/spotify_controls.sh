#!/bin/bash

# Íconos (puedes personalizarlos)
ICON_PREVIOUS="⏮"
ICON_PLAY="⏵"
ICON_PAUSE="⏸"
ICON_NEXT="⏭"

# Obtener estado actual de Spotify
STATUS=$(playerctl status 2>/dev/null)
ARTIST_TITLE=$(playerctl metadata --format "{{ artist }} - {{ title }}" 2>/dev/null)

# Mostrar controles según el estado
if [ "$STATUS" = "Playing" ]; then
    echo "$ARTIST_TITLE"
elif [ "$STATUS" = "Paused" ]; then
    echo "$ICON_PREVIOUS $ICON_PLAY $ICON_NEXT | $ARTIST_TITLE"
else
    echo ""
fi

