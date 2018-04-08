i3-packages:
  pkg.installed:
    - names:
      - xinit
      - lightdm
      - i3
      - i3blocks
      - rofi
      - xfce4-terminal

{% if 'users' in pillar.items() %}
{% for user in pillar.get('users', []) %}
manage-{{ user }}-xinit:
  file.managed:
    - name: '/home/{{ user }}/.xinitrc'
    - contents: |
        #!/bin/bash

        . /etc/X11/Xsession
        exec i3-wm
    - require:
      - pkg: xinit
{% endfor %}
{% endif %}

# Use this if not using the users-formula:
#
# include:
#   - syncstation.configure-i3
