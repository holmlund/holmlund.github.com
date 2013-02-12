---
comments: true
date: 2011-11-25 18:58:22
layout: post
slug: responsiv-design-i-drupal
title: Responsiv design i Drupal
wordpress_id: 33
categories:
- Utveckling
post_format:
- Notering
tags:
- Drupal
- Responsiv
alias: /blogg/responsiv-design-i-drupal
---
```
Uppmärksamma läsare har kanske upptäckt att nuvarande installation 
inte är densamma som beskrivs nedan.
```

Bloggen är nu uppdaterad till en responsiv design, vilket innebär att den automatiskt anpassar innehållet efter fönsterstorlek. Förutom detta så har jag också lekt runt lite med transitions och animationer i CSS 3.

Ni kan testa detta enklast genom att gå in via en mobil/tablet alternativt justera storleken på webbläsarfönstret om ni sitter vid exempelvis en laptop.

Rent tekniskt så är lösningen byggd på [Drupal 7](http://drupal.org) med ett [panels](http://drupal.org/project/panels)-anpassat tema baserat på [adaptive themes](http://drupal.org/project/adaptivetheme) och diverse custom HTML5, CSS3 & Javascript. [Media queries](http://www.w3.org/TR/css3-mediaqueries/) och CSS3 transitions är det som bl. a förändrar menyn vid resize och skapar effekter som det som händer när ni för muspekaren över de sociala ikonerna ovanför sökfönstret.

Bildspelet är baserat på [flexslider](http://flex.madebymufffin.com/) som ger stöd för mobila swipes och andra trevligheter, inbäddade videofiler görs responsiva med [fitvids](http://fitvidsjs.com/). Slidern som återfinns på [förstasidan](http://www.davidholmlund.se) är lite av ett undantag och fulhack som kom till då jag ville kunna placera text vid sidan av bilder, den fungerar bra i mobilen men kan se lite konstig ut om man leker för mycket med fönsterstorleken fram och tillbaka.

Hör gärna av er i kommenteringsfältet nedan ifall ni har några funderingar eller vill ha kodexempel.

Det bör också tilläggas att hela denna sajt är något av en lekstuga och hopkoket av effekter bör absolut tas med en nypa salt. =)


