#!/bin/bash
set -e

echo "Installing..."

config_dir="$HOME/.config"
repo_dir="$(pwd)"

# Make base directories in ~/.config
for dir in dunst fastfetch hypr kitty rofi waybar; do
    mkdir -p "$config_dir/$dir"
done

# Dunstrc
ln -sf "$repo_dir/dunst/dunstrc"      "$config_dir/dunst/dunstrc"

# Fastfetch
ln -sf "$repo_dir/fastfetch/config.jsonc"       "$config_dir/fastfetch/config.jsonc"

# Hyprland
ln -sf "$repo_dir/hypr/hyprland.conf"       "$config_dir/hypr/hyprland.conf"
ln -sf "$repo_dir/hypr/hyprpaper.conf"      "$config_dir/hypr/hyprpaper.conf"

# Kitty
ln -sf "$repo_dir/kitty/kitty.conf"     "$config_dir/kitty/kitty.conf"

# Rofi
ln -sf "$repo_dir/rofi/rofi.rasi"       "$config_dir/rofi/rofi.rasi"

# Waybar
ln -sf "$repo_dir/waybar/config"       "$config_dir/waybar/config"
ln -sf "$repo_dir/waybar/style.css"       "$config_dir/waybar/style.css"

echo "Done!"
