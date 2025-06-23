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

Once you address the potential limitations of a static map, exploring an interactive approach can significantly enhance comprehension of the spatial dynamics of your variables (in this case, criminal activity - theft against the person). This makes it far easier to pinpoint critical hotspots, identify risk factors related to these criminal activities, discern subtle trends, and reveal patterns that traditional static formats simply cannot convey.

<div id="crimeMap" style="height: 500px; width: 100%;"></div>

{{< rawhtml >}}
<script>
    // Initialize the map
    var map = L.map('crimeMap').setView([19.4326, -99.1332], 12); // Example: Mexico City lat/lng, zoom level

    // Add a tile layer (OpenStreetMap)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // Fetch and add GeoJSON data
    fetch('/data/your_map_data.geojson') // Path to your GeoJSON file
        .then(response => response.json())
        .then(data => {
            L.geoJson(data, {
                // Optional: Style your GeoJSON features
                style: function(feature) {
                    return {
                        color: "#ff7800",
                        weight: 2,
                        opacity: 0.85
                    };
                },
                // Optional: Add popups to features
                onEachFeature: function(feature, layer) {
                    if (feature.properties && feature.properties.name) {
                        layer.bindPopup(feature.properties.name + '<br>' + (feature.properties.crime_type || ''));
                    }
                }
            }).addTo(map);
        })
        .catch(error => console.error('Error loading GeoJSON:', error));

</script>
{{< /rawhtml >}}


{{< figure src="css-grid-cover.png" alt="Traditional right sidebar layout" caption="A visual example of the traditional right sidebar layout" >}}

---

### <dfn title="Ermahgerd is a humorous version of the phrase oh my god, written as though pronounced with a heavy influence of extra Rs. It's meant to imitate the sound of someone speaking through a retainer.">ERMAHGERD</dfn>

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
