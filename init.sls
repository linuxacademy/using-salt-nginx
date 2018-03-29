{% from "nginx/map.jinja" import nginx with context %}
{% if grains['os_family']=="RedHat" %}

include:
  - nginx.epel

{% endif %}

install_nginx:
  pkg.installed:
    - name: {{ nginx.package }}
  service.running:
    - name: {{ nginx.service }}
    - enable: true
