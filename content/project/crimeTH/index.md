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

As mentioned above, an interactive map can help you to enhace the identification of specific relations within your spatial analysis. _Interact_ with a map could be challenging, however, there are some applications that help us to easily develop those interactions. 

For instance, to create the map you are seeing in this post, I used [Leaflet](https://leafletjs.com/).  This app is an open-source JavaScript library specifically designed for creating mobile-friendly interactive maps. `leaflet` utility is further enhanced by its user-friendly and well-documented API, making map development accessible even to beginners, while its open-source nature fosters continuous improvement and a rich ecosystem of plugins for extensive customisation.

The upcoming _Interactive Choropleth Map_ was developed following this [Leaflet-tutorial](https://leafletjs.com/examples/choropleth/).

<iframe src="/data/LBTH_wardtheftperson0724.html" width="100%" height="600" style="border:none;"></iframe>


> ##### Interactivity as a step closer to identify potential relations
>
> Optimised for intuitive interaction, this dynamic layout enables direct investigation of theft concentrations. By analysing the underlying urban and economic contexts within these areas, you can gain deeper insights crucial for identifying and developing effective strategies to mitigate this type of crime.
>
> — _José Luis Hernández_

Regarding the identification of hostpost or places with more criminal activity, analysis of the map demonstrates that Spitalfields and Banglatown Ward registered the highest volume of reported crimes, totalling 24. This is succeeded by Bromley North (19 thefts) and Mile End (18). The interactive functionality of the map allows us to precisely identify that Spitalfields and Banglatown contains several of London's most densely populated markets. Moreover, it reveals particular streets and facilities – for instance, Spitalfields Market and Whitechapel underground station – that are known to attract this type of criminal activity. Understanding these unique urban characteristics is key to enhancing the development of bespoke strategies for crime prevention.


Once the places with more crimes were identified, the next step involves a more detailed spatial identification of locations that can be considered as Risk Factors. Additionally, we must analyse these patterns under a crime science approach.  This analysis is presented in the blog section called "Understanding criminal patterns and potential risk factors".

`
#### A granular identification of urban context is vital for informing and enhancing the strategic development of specific actions to mitigate criminal activity.

[^1]: Data was obtained in the _London Datastore_ - crime section: [MPS Recorded Crime: Geographic Breakdown](https://data.london.gov.uk/dataset/recorded_crime_summary/)
