This repository contains docker-compose files for various self-hosted services.

# Services

| Service             | Description                | Port  | Container Name      | CPU (cores)           | RAM                                          |
| ------------------- | -------------------------- | ----- | ------------------- | --------------------- | -------------------------------------------- |
| AdGuard             | Ad blocker                 | 3000  | adguard             | \~1 thread            | \~50 MB, 256 MB is better, preferably 512 MB |
| Adminer             | Database manager           | 8080  | adminer             | \~1 core              | \~100 MB                                     |
| cadvisor            | Container metrics exporter |       | cadvisor            | \~1 core              | \~100–200 MB                                 |
| Dashy               | Dashboard service          | 8080  | dashy               | \~1 core              | \~256 MB                                     |
| Database (MariaDB)  | Database service           | 3306  | database            | ≥1 core, preferably 2 | ≥1 GB RAM                                    |
| Gitea               | Self-hosted git service    | 3000  | gitea               | 2 cores               | \~1 GB RAM                                   |
| Gotify              | Notification service       | 80    | gotify              | \~1 core              | \~256 MB                                     |
| Grafana             | Monitoring dashboards      | 3000  | grafana             | 1–2 cores             | \~512 MB–1 GB                                |
| Home Assistant      | Home automation            | 8123  | homeassistant       | ≥1 core, preferably 2 | ≥2 GB, preferably 4 GB                       |
| Homepage            | Homepage dashboard         | 3000  | homepage            | \~1 core              | \~256 MB                                     |
| Immich              | Photo and video manager    | 2283  | immich              | ≥2 cores              | ≥2 GB RAM                                    |
| Kavita              | Comic service              | 5000  | kavita              | \~1 core              | \~512 MB                                     |
| Mealie              | Recipe service             | 9000  | mealie              | \~1 core              | \~512 MB                                     |
| MySpeed             | Internet speed test        | 5216  | myspeed             | \~1 core              | \~256 MB                                     |
| Navidrome           | Music service              | 4533  | navidrome           | \~1 core              | \~512 MB                                     |
| NetData             | System monitoring service  | 19999 | netdata             | 1–2 cores             | \~1 GB RAM                                   |
| Nextcloud           | Self-hosted cloud          | 80    | nextcloud           | ≥2 cores              | ≥2–4 GB RAM                                  |
| Nginx Proxy Manager | Reverse proxy manager      | 81    | nginx-proxy-manager | \~1 core              | \~256 MB                                     |
| ntfy                | Push notifications         | 80    | ntfy.sh             | \~1 core              | \~256 MB                                     |
| Photoprism          | Photo service              | 2342  | photoprism          | ≥2 cores              | ≥2 GB RAM                                    |
| Portainer           | Docker container manager   | 9000  | portainer           | \~1 core              | \~512 MB                                     |
| Prometheus          | Monitoring service         | 9090  | prometheus          | 1–2 cores             | \~1 GB RAM                                   |
| Redis               | In-memory data store       | 6379  | redis               | \~1 core              | \~512 MB–1 GB                                |
| SyncThing           | File sync                  | 8384  | syncthing           | \~1 core              | \~512 MB                                     |
| Tinyfilemanager     | File manager               | 80    | tinyfilemanager     | \~1 core              | \~256 MB                                     |
| Uptime Kuma         | Uptime monitoring          | 3001  | uptime-kuma         | \~1 core              | \~256 MB                                     |
| Vaultwarden         | Password manager           | 80    | vaultwarden         | \~1 core              | \~512 MB                                     |
| Viewtube            | YouTube front              | 8066  | viewtube            |                       |                                              |
| Watchtower          | Auto-update containers     |       | watchtower          | \~1 core              | \~256 MB                                     |
| Whoogle             | Self-hosted Google proxy   | 5000  | whoogle             | \~1 core              | \~256 MB                                     |
| WireGuard           | Self-hosted VPN            | 51821 | wireguard           | \~1 core              | \~128 MB                                     |

# Grafana Dashboard Id's

-   1860 - [Node Exporter](https://grafana.com/grafana/dashboards/1860-node-exporter-full/)
-   13946 - [cAdvisor](https://grafana.com/grafana/dashboards/13946-docker-cadvisor/)
-   14031 - [MySQL](https://grafana.com/grafana/dashboards/14031-mysql-dashboard/)
-   14900 - [Nginx](https://grafana.com/grafana/dashboards/14900-nginx/)
-   13041 - [Website](https://grafana.com/grafana/dashboards/13041-website-monitoring/)
-   13230 - [SSL Certificate Monitor](https://grafana.com/grafana/dashboards/13230-certificate-monitor/)
-   18038 - [Navidrome](https://grafana.com/grafana/dashboards/18038-navidrome/)
-   14000 - [GitHub](https://grafana.com/grafana/dashboards/14000-github-default/)
