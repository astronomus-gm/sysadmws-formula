{% if (pillar['sysadmws-utils'] is defined) and (pillar['sysadmws-utils'] is not none) %}
  {% if (pillar['sysadmws-utils']['disk_alert'] is defined) and (pillar['sysadmws-utils']['disk_alert'] is not none) %}
swsu_disk_alert_config_managed:
  file.managed:
    - name: '/opt/sysadmws-utils/disk_alert/disk_alert.conf'
    - mode: 0600
    - user: root
    - group: root
    - contents: {{ pillar['sysadmws-utils']['disk_alert'] | yaml_encode }}
  {% endif %}

  {% if (pillar['sysadmws-utils']['mysql_replica_checker'] is defined) and (pillar['sysadmws-utils']['mysql_replica_checker'] is not none) %}
swsu_mysql_replica_checker_config_managed:
  file.managed:
    - name: '/opt/sysadmws-utils/mysql_replica_checker/mysql_replica_checker.conf'
    - mode: 0600
    - user: root
    - group: root
    - contents: {{ pillar['sysadmws-utils']['mysql_replica_checker'] | yaml_encode }}
  {% endif %}
{% endif %}