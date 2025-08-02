This repository contains docker-compose files for various self-hosted services.

# Services

| Service             | Description                | Port  | Container Name      |
| ------------------- | -------------------------- | ----- | ------------------- |
| AdGuard             | Ad blocker                 | 3000  | adguard             |
| Adminer             | Database manager           | 8080  | adminer             |
| cadvisor            | Container metrics exporter |       | cadvisor            |
| Dashy               | Dashboard service          | 8080  | dashy               |
| Database            | Database service           | 3306  | database            |
| Gitea               | Self-hosted git service    | 3000  | gitea               |
| Gotify              | Notification service       | 80    | gotify              |
| Grafana             | Monitoring dashboards      | 3000  | grafana             |
| Home Assistant      | Home automation            | 8123  | homeassistant       |
| Homepage            | Homepage dashboard         | 3000  | homepage            |
| Immich              | Photo and video manager    | 2283  | immich              |
| Kavita              | Comic service              | 5000  | kavita              |
| Mealie              | Recipe service             | 9000  | mealie              |
| MySpeed             | Internet speed test        | 5216  | myspeed             |
| Navidrome           | Music service              | 4533  | navidrome           |
| NetData             | System monitoring service  | 19999 | netdata             |
| Nextcloud           | Self-hosted cloud          | 80    | nextcloud           |
| Nginx Proxy Manager | Reverse proxy manager      | 81    | nginx-proxy-manager |
| ntfy                | Push notifications         | 80    | ntfy.sh             |
| Photoprism          | Photo service              | 2342  | photoprism          |
| Portainer           | Docker container manager   | 9000  | portainer           |
| Prometheus          | Monitoring service         | 9090  | prometheus          |
| Redis               | In-memory data store       | 6379  | redis               |
| SyncThing           | File sync                  | 8384  | syncthing           |
| Tinyfilemanager     | File manager               | 80    | tinyfilemanager     |
| Uptime Kuma         | Uptime monitoring          | 3001  | uptime-kuma         |
| Vaultwarden         | Password manager           | 80    | vaultwarden         |
| Watchtower          | Auto-update containers     |       | watchtower          |
| Whoogle             | Self-hosted Google proxy   | 5000  | whoogle             |
| WireGuard           | Self-hosted VPN            | 51821 | wireguard           |

# Grafana Dashboard Id's

-   1860 - [Node Exporter](https://grafana.com/grafana/dashboards/1860-node-exporter-full/)
-   13946 - [cAdvisor](https://grafana.com/grafana/dashboards/13946-docker-cadvisor/)
-   14031 - [MySQL](https://grafana.com/grafana/dashboards/14031-mysql-dashboard/)
-   14900 - [Nginx](https://grafana.com/grafana/dashboards/14900-nginx/)
-   13041 - [Website](https://grafana.com/grafana/dashboards/13041-website-monitoring/)
-   13230 - [SSL Certificate Monitor](https://grafana.com/grafana/dashboards/13230-certificate-monitor/)
-   18038 - [Navidrome](https://grafana.com/grafana/dashboards/18038-navidrome/)
-   14000 - [GitHub](https://grafana.com/grafana/dashboards/14000-github-default/)
