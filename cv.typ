// Imports
#import "@preview/brilliant-cv:2.0.6": cv
#let metadata = toml("./metadata.toml")


#let importModules(modules, lang: metadata.language) = {

  let current-lang = sys.inputs.at("lang", default: metadata.language)
  for module in modules {
    include {
      "modules_" + current-lang + "/" + module + ".typ"
    }
  }
}

// Found in https://github.com/cetz-package/cetz/blob/master/src/util.typ
// Merges dictionary `b` onto dictionary `a`. (Your function)
#let merge-dictionary(a, b, overwrite: true) = {
  for (k, v) in b {
    if type(a) == dictionary and k in a and type(v) == dictionary and type(a.at(k)) == dictionary {
      a.insert(k, merge-dictionary(a.at(k), v, overwrite: overwrite))
    } else if overwrite or k not in a {
      a.insert(k, v)
    }
  }
  return a
}

#let private_data = {
  if read("secrets.toml") != none {
    toml("secrets.toml")
  } else {
    [:]
  }
}

#let metadata = merge-dictionary(metadata, private_data)

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
