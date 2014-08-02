#!jinja|yaml

{% from 'clamav/defaults.yaml' import rawmap with context %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('clamav:lookup')) %}

include: {{ datamap.sls_include|default([]) }}
extend: {{ datamap.sls_extend|default({}) }}

clamav:
  pkg:
    - installed
    - pkgs: {{ datamap.pkgs }}
  user:
    - present
    - name: {{ datamap.user.name|default('clamav') }}
    - optional_groups: {{ datamap.user.groups|default(['clamav']) }}

clamav_daemon:
  service:
    - {{ datamap.daemon.service.ensure|default('running') }}
    - name: {{ datamap.daemon.service.name|default('clamav-daemon') }}
    - enable: {{ datamap.daemon.service.enable|default(True) }}

clamav_freshclam:
  service:
    - {{ datamap.freshclam.service.ensure|default('running') }}
    - name: {{ datamap.freshclam.service.name|default('clamav-freshclam') }}
    - enable: {{ datamap.freshclam.service.enable|default(True) }}
