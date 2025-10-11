// Imports
#import "@preview/brilliant-cv:2.0.6": cv
#let metadata = toml("./metadata.toml")

#let current-lang = sys.inputs.at("lang", default: metadata.language)

#let importModules(modules, lang: metadata.language) = {
  for module in modules {
    include {
      "modules_" + lang + "/" + module + ".typ"
    }
  }
}

// Passiere die ermittelte Sprache an die importModules Funktion
#let importModules(modules, lang: current-lang) = {
  for module in modules {
    include {
      "modules_" + lang + "/" + module + ".typ"
    }
  }
}

#show: cv.with(
  metadata,
  profilePhoto: image("./src/avatar.png"),
)
#importModules((
  "education",
  "professional",
  "projects",
  // "certificates",
  "publications",
  "skills",
))
