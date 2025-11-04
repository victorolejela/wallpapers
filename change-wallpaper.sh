#!/usr/bin/env bash
# Random wallpaper changer for Hyprland using swww

WALLPAPER_DIR="$HOME/Downloads/walpaper/wallpapers"
INTERVAL=60  # seconds (1 minutes)

# Start swww if not already running
swww query || swww init

while true; do
  IMAGE=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
  echo "Setting wallpaper: $IMAGE"
  swww img "$IMAGE" --transition-type any --transition-fps 60 --transition-duration 2
  sleep $INTERVAL
done

