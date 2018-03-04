{% if grains['os'] == 'Debian' %}
blueman-applet:
  pkg.installed

nm-applet:
  pkg.installed
{% endif %}

openvpn:
  pkg.installed

syncthing:
  pkg.installed
