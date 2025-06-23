---
author: Dr. Jose Luis Hernandez-Ramirez
categories:
- Datavis
- Leaflet
- Maps
date: "2025-06-23"
draft: false
excerpt: An interactive visualisation about theft against the persons in London Borough of Tower Hamlets in July 2024.
featured: true
layout: single-sidebar
links:
- icon: door-open
  icon_pack: fas
  name: website
  url: https://drjoseluisheram.github.io/leaflet-interactive-crime/
- icon: github
  icon_pack: fab
  name: code
  url: https://github.com/drjoseluisheram/leaflet-interactive-crime/blob/main/LBTH_wardtheftperson0724-Octoberproof.html
- icon: newspaper
  icon_pack: far
  name: Blog post
  url: https://education.rstudio.com/blog/2020/07/palmerpenguins-cran/
subtitle: ""
tags:
- hugo-site
title: Crime activity-interactive map
---

### “Static maps display information; interactive maps invite discovery. They empower users to delve into specific areas, retrieving detailed insights on demand—be it the type of crime, time of day, or resolution status.”

*— [You can check more info about this map in my personal Github](https://github.com/drjoseluisheram/leaflet-interactive-crime)* [^1]

---

Since I began my mapping journey, I've said countless times the phrase '...there's got to be a better way to explain this phenomenon.' While a choropleth static map often serves as a good starting point for spatial analysis, this type of static map doesn't always fully convey the complete analysis of your variables of interest. 

For instance, the following map shows the theft against person in London Borough of Tower Hamlets (LBTH), as you can observe on the map, there are specific wards that concentrate the most criminal activities. However, this map lacks to show certain conditions or risk factors that can be related to this criminal activity.

{{< figure src="crimeth.png" alt="Traditional right sidebar layout" caption="A chorophlet map of crime against the person in LBTH" >}}

Once you address the potential limitations of a static map, exploring an interactive approach can significantly enhance comprehension of the spatial dynamics of your variables (in this case, criminal activity - theft against the person). This makes it far easier to pinpoint critical hotspots, identify risk factors related to these criminal activities, discern subtle trends, and reveal patterns that traditional static formats simply cannot convey. In the next section, I delve into a software to create interactive maps and how can help us to better analyse our spatial patterns.


---

### <dfn title="Interactive maps using leaflet.">Interactive maps using leaflet</dfn>

A proper grid is what we always wanted, no ... _needed_ to build websites with a solid, unbreakable structure. And that's why I used it in this theme. I call this feature a "scaffold" because none of the _content_ is laid out on this grid. Only the main _structure_: consisting of the `header`, `footer`, `main`, `aside`, and `footer`. As you can tell by this quote from the [W3C](https://www.w3.org/TR/css-grid-1/) on the candidate recommendation itself, Grid is the perfect tool for the job:

> ##### CSS Grid Layout Module
>
> This CSS module defines a two-dimensional grid-based layout system, optimized for user interface design. In the grid layout model, the children of a grid container can be positioned into arbitrary slots in a predefined flexible or fixed-size layout grid.
>
> — _W3C_

CSS Grid is a total game changer, IMHO. Compared to the bottomless pit of despair that is the old way, the new way of building a site structure can be done in as little as 5 lines of CSS. Of course, it always takes more than that, but not much. I mean this is really the meat of the deal:

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  grid-template-rows: repeat(3, auto);
}
```

#### What an amazing time to be a web developer. Anyway, I hope you enjoy this "feature" that you'll probably never notice or even see. Maybe that's the best part of a good user interface – the hidden stuff that just works.

[^1]: The original article cited here is now updated and maintained by the staff over at CSS-Tricks. Bookmark their version if you want to dive in and learn about CSS Grid: [A Complete Guide to Grid](https://css-tricks.com/snippets/css/complete-guide-grid/)
