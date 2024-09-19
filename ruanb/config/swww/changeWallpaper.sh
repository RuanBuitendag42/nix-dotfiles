#!/usr/bin/env bash

# SELECT WALLPAPER 
function select_wallpaper() {
  local image_dir=~/Pictures/Wallpapers
  local image_file=$(ls $image_dir/*.* | fzf --preview='kitty icat \
    --clear \
    --transfer-mode=memory \
    --stdin=no \
    --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@0x0 \
    {} > /dev/tty' --preview-window=up:20)

  if [[ -n "$image_file" ]]; then
    # Extract the filename from the selected path
    local filename=$(basename "$image_file")
    set_wallpaper "$filename"
  else
    echo "No image selected."
  fi
}

# SET WALLPAPER 
function set_wallpaper() {
  if [[ -z "$1" ]]; then
    echo "Usage: set_wallpaper <image_name>"
    return 1
  fi
  local image_path=~/Pictures/Wallpapers/"$1"
  if [[ -f "$image_path" ]]; then
    swww img "$image_path" --transition-fps 144 --transition-type any
  else
    echo "File not found: $image_path"
    return 1
  fi
}

select_wallpaper
