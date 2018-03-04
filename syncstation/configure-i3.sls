{% for user, uid in pillar.get('users', {}).items() %}
/home/{{user}}/.config/i3/config:
  file.managed:
    - source: salt://managed_files/i3-config
    - makedirs: True
{% endfor %}
