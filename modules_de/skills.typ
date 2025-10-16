// Imports
#import "@preview/brilliant-cv:2.0.6": cvSection, cvSkill, hBar 
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)

#cvSection("Kernkompetenzen (Skills)")

- *Betriebssysteme/Administration:*
  Linux (Debian, Arch Linux, OpenWrt), Windows Server (Grundlagen), Infrastructure as Code (IaC) Prinzipien.

- *DevOps, Monitoring & Container:*
  Docker (Fortgeschritten), Prometheus, Grafana, Loki (PLG Stack), GitLab CI, Jenkins, Uptime Kuma, Watchtower.

- *Skripting/Automatisierung:*
  Bash für Systemaufgaben, Python (Automatisierung), Shell Scripting.

- *Datenbanken:*
  PostgreSQL, TimescaleDB, MariaDB/MySQL, Redis.

- *Netzwerk & Security:*
  OpenWrt Router-Konfiguration, WireGuard VPN, Pi-hole (DNS-Level Security), SWAG (Nginx/Reverse Proxy), Samba.

- *Entwicklung (Fullstack):*
  Java (JSF, Spring Boot, JUnit), JavaScript, React Native, TypeScript, PHP (Laravel).
