// Imports
#import "@preview/brilliant-cv:2.0.6": cvSection, cvEntry, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Ausbildung")

#cvEntry(
  title: [Diplomprüfung mit gutem Erfolg],
  society: [IT Kolleg, Fachrichtung Angewandte Informatik],
  date: [09/2017 - 10/2019],
  location: [Imst, Österreich],
  description: list(
    [Abschluss im Schwerpunkt *Softwareentwicklung*, ergänzt durch fundierte Kenntnisse in Datenbanken und Netzwerktechnik.],
  ),
)

#cvEntry(
  title: [Lehrabschluss Koch],
  society: [Hotel Sonnblick],
  date: [08/2011 - 08/2014],
  location: [Plangeross, Österreich],
  description: list(
    
  ),
)
