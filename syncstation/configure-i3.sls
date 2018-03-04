{% for user, uid in pillar.get('users', {}).items() %}
/home/{{user}}/.config/i3/config:
  file.replace:
    - pattern: "bindsym $mod+q"
    - repl: |
      bindsym $mod+q exec \"rofi -modi window,drun,run -show drun -sidebar-mode -terminal xfce4-terminal -color-window '#000000, #000000, #000000' -color-normal '#000000, #b3e774, #000000, #b3e774, #000000' -color-active '#000000, #b3e774, #000000, #b3e774, #000000' -color-urgent '#000000, #b3e774, #000000, #b3e774, #000000'\"

      exec --no-startup-id gnome-keyring-daemon
      exec --no-startup-id nm-applet
      exec --no-startup-id keepassxc
      exec --no-startup-id xset dpms 600
      exec --no-startup-id xautolock -time 10 -locker i3lock
      exec syncthing -no-browser
    - append_if_not_found: True
{% endfor %}
