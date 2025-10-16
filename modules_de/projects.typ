// Imports
#import "@preview/brilliant-cv:2.0.6": cvSection, cvEntry
#import "../lib.typ": cvSubsection
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Berufliche Laufbahn & Engagement")

#cvSubsection("Chronologischer Werdegang")


#cvEntry(
  title: [Strukturelle Wiedereingliederung  Aktive Weiterbildung],
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

#move(dx: 0pt, dy: -25pt, cvEntry(
  title: [],
  society: [],
  date: [],
  location: [],
  description: list(
    [Analytisches Denken & Strategie: Interesse an komplexen Strategie- und Rollenspielen, was die Fähigkeit zur langfristigen Planung und zur Analyse komplexer Systeme unterstreicht.],
    [Disziplin & Resilienz: Regelmäßiges Fitness-Training (2x wöchentlich) zur Förderung der körperlichen und mentalen Ausdauer (im Zuge der strukturierten Wiedereingliederung).],
    [Naturverbundenheit: Wandern und Naturerlebnisse als Ausgleich zur Bildschirmarbeit.]
  ),
))
