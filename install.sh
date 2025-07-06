#!/bin/bash
set -e

config_dir="$HOME/.config"
repo_dir="$(pwd)"

# Make base directories in ~/.config
for dir in dunst fastfetch hypr kitty rofi waybar; do
    mkdir -p "$config_dir/$dir"
done

# Dunstrc
ln -sf "$repo_dir/settings/dunst/dunstrc"      "$config_dir/dunst/dunstrc"

# Fastfetch
ln -sf "$repo_dir/settings/fastfetch/config.jsonc"       "$config_dir/fastfetch/config.jsonc"

# Hyprland
ln -sf "$repo_dir/settings/hyprland/hyprland.conf"       "$config_dir/hypr/hyprland.conf"
ln -sf "$repo_dir/settings/hyprland/hyprpaper.conf"      "$config_dir/hypr/hyprpaper.conf"

# Kitty
ln -sf "$repo_dir/settings/kitty/kitty.conf"     "$config_dir/kitty/kitty.conf"

# Rofi
ln -sf "$repo_dir/settings/rofi/config.rasi"       "$config_dir/rofi/config.rasi"

# Waybar
ln -sf "$repo_dir/settings/waybar/config"       "$config_dir/waybar/config"
ln -sf "$repo_dir/settings/waybar/style.css"       "$config_dir/waybar/style.css"

echo "Done."
