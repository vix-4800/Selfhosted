This repository contains docker-compose files for various self-hosted services.

# Services

| Service             | Description               | Port  | Container Name      |
| ------------------- | ------------------------- | ----- | ------------------- |
| Homepage            | Homepage                  | 3000  | homepage            |
| Nginx Proxy Manager | Reverse proxy manager     | 81    | nginx-proxy-manager |
| Gitea               | Self-hosted git service   | 3000  | gitea               |
| Kavita              | Comic service             | 5000  | kavita              |
| NetData             | System monitoring service | 19999 | netdata             |
| AdGuard             | Ad blocker                | 3000  | adguard             |
| Navidrome           | Music service             | 4533  | navidrome           |
| Tinyfilemanager     | File manager              | 80    | tinyfilemanager     |
| Photoprism          | Photo service             | 2342  | photoprism          |
| Mealie              | Recipe service            | 9000  | mealie              |
| Adminer             | Database manager          | 8080  | adminer             |
| Portainer           | Docker container manager  | 9000  | portainer           |
| Uptime Kuma         | Uptime monitoring         | 3001  | uptime-kuma         |
| WireGuard           | Self-hosted VPN           | 51821 | wg-easy             |
| SyncThing           | File sync                 | 8384  | syncthing           |
| Grafana             | Monitoring dashboards     | 3000  | grafana             |
| Prometheus          | Monitoring service        | 9090  | prometheus          |
| Vaultwarden         | Password manager          | 80    | vaultwarden         |
| MySpeed             | Internet speed test       | 5216  | myspeed             |
| Gotity              | Notification service      | 80    | gotity              |
| Nextcloud           | Self-hosted cloud         | 80    | nextcloud           |

# Grafana Dashboard Id's

-   1860 - [Node Exporter](https://grafana.com/grafana/dashboards/1860-node-exporter-full/)
-   13946 - [cAdvisor](https://grafana.com/grafana/dashboards/13946-docker-cadvisor/)
-   14031 - [MySQL](https://grafana.com/grafana/dashboards/14031-mysql-dashboard/)
-   14900 - [Nginx](https://grafana.com/grafana/dashboards/14900-nginx/)
-   13041 - [Website](https://grafana.com/grafana/dashboards/13041-website-monitoring/)
-   13230 - [SSL Certificate Monitor](https://grafana.com/grafana/dashboards/13230-certificate-monitor/)
-   18038 - [Navidrome](https://grafana.com/grafana/dashboards/18038-navidrome/)
-   14000 - [GitHub](https://grafana.com/grafana/dashboards/14000-github-default/)
