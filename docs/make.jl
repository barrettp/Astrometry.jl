using Documenter, Astrometry
using Documenter.Remotes: GitHub

makedocs(;
    modules = [Astrometry],
    sitename = "Astrometry.jl",
    authors = "Paul Barrett",
    repo = GitHub("JuliaAstro/Astrometry.jl"),
    format = Documenter.HTML(;
        assets = ["assets/custom.css"],
        sidebar_sitename = false,
        collapselevel = 1,
        warn_outdated = true,
        canonical = "https://juliaastro.org/Astrometry/stable/",
    ),
    warnonly = [:missing_docs],
    pages = [
        "Home" => "index.md",
        "The SOFA sub-package" => Any[
            "Introduction" => "SOFA.md",
            "Astrometry" => "SOFA/astrometry.md",
            "Calendars" => "SOFA/calendars.md",
            "Coefficients" => "SOFA/coefficients.md",
            "Ecliptic" => "SOFA/ecliptic.md",
            "Ephemerides" => "SOFA/ephemerides.md",
            "Equatorial" => "SOFA/equatorial.md",
            "Galactic" => "SOFA/galactic.md",
            "Geocentric" => "SOFA/geocentric.md",
            "Gnomonic" => "SOFA/gnomonic.md",
            "Precession" => "SOFA/precession.md",
            "Rotations" => "SOFA/rotations.md",
            "Space Motion" => "SOFA/spacemotion.md",
            "Star Catalogs" => "SOFA/starcatalogs.md",
            "Timescales" => "SOFA/timescales.md",
            "Vectorops" => "SOFA/vectorops.md",
        ],
        "API" => "api.md"
    ],
)

deploydocs(;
  repo = "github.com/JuliaAstro/Astrometry.jl",
  devbranch = "main",
  push_preview = true,
  versions = ["stable" => "v^", "v#.#"], # Restrict to minor releases
)
