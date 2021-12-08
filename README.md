TODO:
- fix molecule verify play
- add alertmanager
- add SSL
- add dynamic config

---
```BASH
# this will deploy prometheus, node_exporter and alert manager(TODO)
# all components are behind HAproxy with basic authentication

# variables
# _haproxy_node_exporter_username -> node exporter basic auth username (DEFAULT = node_exporter)
# _haproxy_node_exporter_password -> node exporter basic auth password (DEFAULT = node_exporter)
# _haproxy_prometheus_username -> prometheus basic auth username (DEFAULT = prometheus)
# _haproxy_prometheus_password -> prometheus basic auth password (DEFAULT = prometheus)
# _node_exporters_job_name -> job name in prometheus config for node exporters (DEFAULT = node_exporter)
# _enable_file_sd -> by default all hosts under nodes group get add to prometheus node exporter job with file service discovery config, for doing it statically and add them in prometheus.yml set it to "false" (its string not boolean) (DEFAULT = "true" )
# _file_sd_labels -> a dictionary to add labels to node exporter groups in prometheus scrape config (DEFAULT = null)

# run make to download latest version of alertmanager(TODO), prometheus and node exporter for you
make

# if you want to test the playbook You can run molecule(verify play has problems, converge step working, TODO)

# change ./hosts file and make your inventory or replace it with your dynamic inventory

# run the playbook
ansible-playbook main.yaml

# instead of running everything you can just call each part with tags
# available tags:
# - prometheus
# - node_exporter
# - alertmanager(TODO)
