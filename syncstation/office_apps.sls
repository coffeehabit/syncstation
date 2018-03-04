libreoffice:
  pkg.installed

{% if grains['cpuarch'] == 'amd64' %}
darktable:
  pkg.installed
{% endif %}
  
obs:
  pkg.installed

gimp:
  pkg.installed
  
shutter:
  pkg.installed
