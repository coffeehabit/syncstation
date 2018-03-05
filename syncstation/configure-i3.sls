{% for user, uid in pillar.get('users', {}).items() %}
/home/{{user}}/.config/i3/config:
  file.managed:
    - source: salt://users/files/default/.config/i3/i3-config
    - makedirs: True
{% endfor %}
