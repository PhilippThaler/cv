// Imports
#import "@preview/brilliant-cv:2.0.6": cvSection, cvSkill, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Kernkompetenzen (Skills)")

#cvSkill(
  type: [*Betriebssysteme/Administration:*],
  info: [Linux (*Debian*, *Arch Linux*, *OpenWrt*), Windows Server (Grundlagen), Infrastructure as Code (IaC) Prinzipien.]
)
#cvSkill(
  type: [*DevOps, Monitoring & Container:*], 
  info: [*Docker (Fortgeschritten)*, Prometheus, Grafana, Loki (*PLG Stack*), GitLab CI, Jenkins, Uptime Kuma, Watchtower.]
)
#cvSkill(
  type: [*Skripting/Automatisierung:*], 
  info: [*Bash* für Systemaufgaben, Python (Automatisierung), Shell Scripting.]
)
#cvSkill(
  type: [*Datenbanken:*], 
  info: [*PostgreSQL*, *TimescaleDB*, MariaDB/MySQL, Redis.]
)
#cvSkill(
  type: [*Netzwerk & Security:*], 
  info: [*OpenWrt Router-Konfiguration*, *WireGuard VPN*, *Pi-hole* (DNS-Level Security), SWAG (Nginx/Reverse Proxy), Samba.]
)
#cvSkill(
  type: [*Entwicklung (Fullstack):*], 
  info: [Java (JSF, Spring Boot, JUnit), JavaScript, React Native, TypeScript, PHP (Laravel).]
)
