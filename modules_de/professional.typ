// Imports
#import "@preview/brilliant-cv:2.0.6": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Berufserfahrung & Relevante Projekte")

#cvEntry(
  title: [Self-Hosted DevOps-Infrastruktur (seit 2018)],
  society: [Umfassendes Home-Lab & Permanente Weiterbildung],
  date: [05/2018 - Heute],
  location: [Innsbruck, Österreich],
  description: list(
    [Aktiver Betrieb und Wartung eines dedizierten Debian Linux Servers mit einer komplexen Container-Umgebung (30+ Dienste).],
    [Bereitstellung aller Dienste mittels Docker und docker-compose hinter einem SWAG (Nginx) Reverse Proxy.],
    [Verwaltung der gesamten Infrastruktur (Debian Server, Docker, Workstation) mittels Infrastructure as Code (IaC)-Prinzipien (Docker Compose Files und Dotfiles auf GitHub).],
    [Konfiguration des Netzwerks über OpenWrt (Linux-basiert) und Absicherung mittels WireGuard VPN und Pi-hole (DNS-Level Security).],
    [Aufbau eines Prometheus/Loki/Grafana (PLG)-Stacks zur zentralen Systemüberwachung und Log-Analyse.],
    [Aktive Teilnahme am Caravan-Programm (Promente) zur strukturierten und stabilen Wiedereingliederung.],
  ),
)

#cvEntry(
  title: [Junior Softwareentwickler (DevOps-Schnittstelle)],
  society: [Ferchau Austria GmbH (Allgemeines Rechenzentrum - ARZ)],
  date: [03/2020 - 07/2022],
  location: [Innsbruck, Österreich],
  description: list(
    [Entwicklung und Betreuung von Features für die ebpMG Online-Banking-Plattform des ARZ.],
    [Aktive Mitarbeit und Support der CI/CD-Pipeline (GitLab CI, Jenkins, Azure DevOps) zur automatisierten Bereitstellung von Anwendungen.],
    [Arbeit mit Container-Technologien (Docker, Kubernetes) an der Schnittstelle zwischen Entwicklung und Betrieb.],
    [Entwicklung mit Java, JSF und JavaScript in einem agilen (SCRUM) Umfeld.],
    [Zusätzliche PHP-Entwicklung einer Schnittstelle zur Verbindung zweier Hotelanwendungen (03/2022 - 07/2022).],
  ),
)

#cvEntry(
  title: [Softwareentwickler (Diplomarbeit)],
  society: [Tiroler Gemüsekiste],
  date: [11/2018 - 06/2019],
  location: [Imst, Österreich],
  description: list(
    [Entwicklung einer mobilen Applikation für die "Tiroler Gemüsekiste" mit React Native und SQLite.],
    [Erstellung einer vollautomatisierten CI/CD-Pipeline mit Gitlab CI, um neue Versionen der App zu veröffentlichen.],
    [Konzeption und Umsetzung eines Java-Parsers zur Konvertierung von Altdaten (HTML) in ein datenbankfreundliches JSON-Format.],
  ),
)
