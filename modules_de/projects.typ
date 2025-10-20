// Imports
#import "@preview/brilliant-cv:2.0.6": cvSection, cvEntry
#import "../lib.typ": cvSubsection
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Berufliche Laufbahn & Engagement")

#cvSubsection("Chronologischer Werdegang")


#cvEntry(
  title: [Strukturelle Wiedereingliederung, Aktive Weiterbildung],
  society: [Eigeninitiative (Projekte, Caravan, AMS)],
  date: [07/2022 - Heute],
  location: [Innsbruck, Österreich],
  description: list(
    
  ),
)

#cvEntry(
  title: [Junior Softwareentwickler (ARZ, PHP-Projekt)],
  society: [Ferchau Austria GmbH],
  date: [03/2020 - 07/2022],
  location: [Innsbruck, Österreich],
  description: list(
    
  ),
)

#cvEntry(
  title: [Saisonarbeit Koch],
  society: [Braunschweiger Hütte, Ascherhütte],
  date: [2015 - 2017],
  location: [Österreich],
  description: list(
    
  ),
)

#cvEntry(
  title: [Präsenzdienst],
  society: [Österreichisches Bundesheer],
  date: [09/2014 - 02/2015],
  location: [Kranebitten, Österreich],
  description: list(
    
  ),
)

#cvSubsection("Interessen und Soft Skills")
#set par(justify: true)
#move(dx: 0pt, dy: -25pt, cvEntry(
  title: [],
  society: [],
  date: [],
  location: [],
  description: list(
    [*Strukturierte & Effiziente Arbeitsweise:* Entscheidend für Konfigurationsmanagement und die Gewährleistung von Stabilität in der komplexen Container-Infrastruktur (Home-Lab).],
    [*Prozessverständnis:* Fokus auf die Optimierung und Automatisierung von Abläufen, insbesondere im Kontext von CI/CD und Deployment-Strategien.],
    [*Hohe Lernbereitschaft & IT-Affinität:* Unabdingbar für die Einarbeitung in neue Monitoring-Tools (PLG-Stack) und Linux-Distributionen (Debian, OpenWrt).],
    [*Zuverlässigkeit:* Gewährleistung eines stabilen und verfügbaren Betriebs von Systemen und Diensten.]
  ),
))
