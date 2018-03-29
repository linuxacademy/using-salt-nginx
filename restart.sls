{% from "nginx/map.jinja" import nginx with context %}

nginx_restart:
  module.wait:
    - name: service.restart
    - m_name: {{ nginx.service }}
    - onchanges:
      - nginx_configuration
