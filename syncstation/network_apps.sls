{% if grains['os'] == 'Debian' %}
include:
  - syncstation.repos.syncthing-repo

blueman-applet:
  pkg.installed

nm-applet:
  pkg.installed
{% endif %}

openvpn:
  pkg.installed

# Copy VPN profiles:
#  file.recurse

syncthing:
  pkg.installed