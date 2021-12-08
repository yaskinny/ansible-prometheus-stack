SHELL=/usr/bin/bash
.PHONY: All
#All: Prometheus Alertmanager NodeExporter
All: Prometheus NodeExporter
	
Prometheus:
	@echo "Downloading Prometheus"
	@curl -Lo ./roles/prometheus/files/prometheus.tgz `curl -sL https://api.github.com/repos/prometheus/prometheus/releases/latest | tr -d '"' | grep -oP 'browser_download_url.*\.linux-amd64.tar.gz$$' | awk '{print $$2}'`
Alertmanager:
	@echo "Downloading Alertmanager"
	@curl -Lo ./roles/alertmanager/files/alertmanager.tgz `curl -sL https://api.github.com/repos/prometheus/alertmanager/releases/latest | tr -d '"' | grep -oP 'browser_download_url.*\.linux-amd64.tar.gz$$' | awk '{print $$2}'`
NodeExporter:
	@echo "Downloading Alertmanager"
	@curl -Lo ./roles/node_exporter/files/node_exporter.tgz `curl -sL https://api.github.com/repos/prometheus/node_exporter/releases/latest | tr -d '"' | grep -oP 'browser_download_url.*\.linux-amd64.tar.gz$$' | awk '{print $$2}'`
