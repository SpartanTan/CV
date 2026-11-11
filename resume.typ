// Shared, package-free layout for both language editions.
#let ink = rgb("172b3a")
#let muted = rgb("52616b")

#let resume(name: "", lang: "en", body) = {
  set document(title: name + " - CV", author: "Zhicun Tan")
  set page(
    paper: "a4",
    margin: (x: 16mm, top: 14mm, bottom: 15mm),
    footer: context align(right, text(size: 8pt, fill: muted)[
      #name · #counter(page).display("1 / 1", both: true)
    ]),
  )
  set text(
    font: ("Liberation Sans", "Noto Sans CJK SC"),
    size: 10.5pt,
    lang: lang,
    fill: ink,
  )
  set par(justify: false, leading: 4pt, spacing: 5pt)
  set block(spacing: 5pt)
  set list(indent: 0pt, body-indent: 11pt, spacing: 4pt, tight: false)
  show link: it => text(fill: ink, it)
  show heading.where(level: 1): it => block(
    above: 9pt, below: 5pt, sticky: true,
  )[
    #stack(dir: ttb, spacing: 3pt,
      text(size: 12pt, weight: "bold", it.body),
      line(length: 100%, stroke: 0.5pt + rgb("aab7bf")),
    )
  ]
  body
}

#let header(name, details) = block(below: 9pt)[
  #grid(
    columns: (1fr, auto), column-gutter: 8mm, align: (left, right),
    text(size: 27pt, weight: "bold", name),
    text(size: 8.5pt, fill: muted, details),
  )
]

// Keep the title, role and first lines together; let long lists flow naturally.
#let entry(title, location, role, date, details: none) = block(
  above: 6pt, below: 3pt, sticky: true, breakable: false,
)[
  #grid(
    columns: (1fr, auto), column-gutter: 5mm,
    strong(title), align(right, text(size: 8.5pt, fill: muted, location)),
  )
  #v(2pt)
  #grid(
    columns: (1fr, auto), column-gutter: 5mm,
    text(size: 9.5pt, role), align(right, text(size: 8.5pt, fill: muted, date)),
  )
  #if details != none { v(2pt); text(size: 9.5pt, fill: muted, details) }
]

#let bullets(..items) = list(..items.pos())

#let award(title, date) = block(above: 3pt, below: 3pt, breakable: false)[
  #grid(columns: (1fr, auto), column-gutter: 5mm,
    title, text(size: 8.5pt, fill: muted, date))
]

#let project-links(video, repo, chinese: false) = text(size: 8pt, weight: "regular")[[
  #link(video, if chinese { [视频] } else { [Video] }) ·
  #link(repo, if chinese { [代码] } else { [Code] })
]]
