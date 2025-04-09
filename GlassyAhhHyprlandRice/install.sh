#bin/sh

progress=1
config_dir=~/.config
local_dir=~/.local
files=19

create_copying_message () {
  clear
  echo "Copying files... [$progress/$files]"
}

cp1 () {
  clear
  cp -r $1 $2 $3 2>/dev/null
}

for n in $(seq 1 $files) 
  do
    if [ $? -eq 0 ]; then
      sleep 0.01
      clear
      create_copying_message
      ((progress+=1))
  else
      echo "Command Failed"
    fi
done


while true ;do
  yay -Suy hyprland waybar wofi waypaper python playerctl swww feh ranger pulsemixer bluetui bluez nwg-look materia-theme-git fastfetch kitty cava zsh curl
  cp1 .config/cava $config_dir
  cp1 .config/dconf $config_dir
  cp1 .config/fastfetch $config_dir
  cp1 .config/glib-2.0 $config_dir
  cp1 .config/gtk-2.0 $config_dir
  cp1 .config/gtk-3.0 $config_dir
  cp1 .config/gtk-4.0 $config_dir
  cp1 .config/hypr $config_dir
  cp1 .config/kitty $config_dir
  cp1 .config/mpv $config_dir
  cp1 .config/nwg-look $config_dir
  cp1 .config/ranger $config_dir
  cp1 .config/waybar $config_dir
  cp1 .config/waypaper $config_dir
  cp1 .config/wofi $config_dir
  cp1 .icons ~
  cp1 .oh-my-zsh ~
  cp1 .p10k.zsh ~
  cp1 .themes ~
  echo "The configuration has been installed succesfully Enjoy your preconfigured Rice!"
  break
done