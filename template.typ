#let content = yaml("cv.yml")

#set document(
    title: (content.name + "'s CV"),
    author: content.name,
)
#set page(numbering: "1",)
#show heading: set text(font: "Linux Biolinum")


#[
    #set align(center)
    = CV
]

== #content.name

#grid(
    columns: (30%, 30%),
    column-gutter: 3em,
    [
        #set list(marker: "")
        - #content.email
        #for address in content.address [
            - #address
        ]
    ],
    [
        #set list(marker: "")
        #for url in content.urls [
            - #url
        ]
    ],
)

#content.intro

== #content.sections.skills

#box(height: 60pt,
    columns(3, gutter: 11pt)[
        #for skill in content.skills [
            - #skill
        ]
    ]
)
== #content.sections.experience

#for experience in content.experience [
    #grid(
        columns: (15%, auto),
        column-gutter: 1em,
        [
            #experience.years
        ],
        [
            *#experience.position*

            _ #experience.job _ / #experience.city

            #experience.summary
        ],
    )
]

== #content.sections.education

#for education in content.education [
    #grid(
        columns: (15%, auto),
        column-gutter: 1em,
        [
            #education.years
        ],
        [
            *#education.subject*

            _ #education.institute _ / #education.city
        ],
    )
]

#pagebreak()

== #content.sections.projects

#for project in content.projects [
    - #project.repo (*#project.name*)
]

== #content.sections.conferences

#for conference in content.conferences [
    #grid(
        columns: (15%, auto),
        column-gutter: 1em,
        [
            #conference.year
        ],
        [
            *#conference.subject*
        ],
    )
]

== #content.sections.languages

#for language in content.languages [
    - #language.language (#language.proficiency)
]
