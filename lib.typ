// Define the spacing constants (adjust these values to control vertical space)
#let section-content-top-skip = 6pt 
#let negative-skip = -3mm 

// Define the styling for the subsection title
#let subsection-style(content) = {
  // Sets the text to bold and a bit smaller (0.9em)
  set text(weight: "bold", size: 1.6em)
  content
}

// The custom subsection function, implementing LaTeX's \cvsubsection
#let cvSubsection(title) = {
  // Add vertical space equivalent to \acvSectionContentTopSkip
  v(section-content-top-skip)
  
  // Add negative space equivalent to \vspace{-3mm}
  v(negative-skip)
  
  // Apply the style to the title
  subsection-style(title)
}

