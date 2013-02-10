---
comments: true
date: 2009-08-21 19:55:00
layout: post
slug: chrome-for-ubuntu
title: Chrome för Ubuntu
wordpress_id: 42
categories:
- Linux
post_format:
- Notering
tags:
- Ubuntu
---



[box type="alert"]Denna guide är numera förlegad och ni kan hitta Chromium i Ubuntus repository alternativt ladda ner chrome från google.com/chrome.[/box]

Chromium finns numera i Ubuntus repositories alternativt så kan ni installera riktiga chrome från [http://www.google.com/chrome](http://www.google.com/chrome)

[Chromium](http://en.wikipedia.org/wiki/Chromium_%28web_browser%29) är det öppna källkodsprojekt som ligger bakom webbläsaren [Google Chrome](http://en.wikipedia.org/wiki/Google_Chrome).

Chrome har hittils bara funnits för MS Windows med OS X- och linuxversioner än så länge under utveckling. Nu börjar dock Chromium-projektet vara så pass stabilt att det är värt att prova på som alternativ webbläsare. Chromium är en ruskigt snabb webbläsare men saknar än så länga alla [tillägg](http://getfirebug.com/) som gör [Firefox](http://sv-se.www.mozilla.com/sv-SE/) oumbärlig.

Jag tänkte i den här posten beskriva på ett så enkelt sätt som möjligt hur du installerar Chromium med Flash-stöd på Ubuntu 9.04 Jaunty.

Ett stort tack till [The Linuxologist](http://linuxologist.com/apps/howto-chromium-browser-on-linux-with-flash/) som inspirerade till detta med en guide på engelska.

Om ni nu mot all förmodan använder er av ett annat operativsystem så tycker jag verkligen att ni ska ta en titt på [Ubuntu Linux](http://www.ubuntu.com/).

Nåväl… låt oss gå vidare till guiden:

Det första ni ska göra är att lägga till en nyckel, vilket ni gör genom att öppna upp en _Terminal_ och skriva:






`sudo apt-key adv --recv -keys --keyserver keyserver.ubuntu.com 4E5E17B5`




När detta är klart så ska ni lägga till följande programvarukällor till _/ etc / apt / sources.list_. Förstod ni inte vad jag just skrev så kan ni göra detta i menyn genom att välja System/Administration/Programvarukällor och sedan fliken Tredjepartsprogram. Välj _Lägg till_ och klistra in hela texten, en i taget:






`deb http://ppa.launchpad.net/chromium-daily/ppa/ubuntu jaunty main 
deb-src http://ppa.launchpad.net/chromium-daily/ppa/ubuntu jaunty main`




OBS: Kör ni en annan version av Ubuntu än 9.04 så får ni byta ut ordet _jaunty_ mot exempelvis _intrepid_ (8.10), _hardy_ (8.04) etc.

Nu går ni tillbaka till _Terminalen_ och skriver:






`sudo apt-get update`




och slutligen:

`sudo apt-get install chromium-browser`

Nu är Chromium installarat och det återstår bara att få _Flash_ att fungera, bryr ni er inte om detta så är det bara att sluta här och istället testa er nya webbläsare:

För att få igång _Flash_ så börjar vi med att skapa en symbolisk länk av libflashplayer.so i Chromiums plugin-mapp:

`cd /usr/lib/chromium-browser/plugins`

och sedan:






`sudo ln -s ../../flashplugi-installer/libflashplayer.so`




Nu återstår bara att konfigurera Chromiums startkommando, vilket ni kan göra genom att högerklicka längst upp till vänster i er meny (vid foten) och välja _redigera menyer_. Därifrån kan ni gå vidare till _Internet_ (under menyer) och sedan _Chromium Web Browser_ (under objekt). Markera Chromium och klicka på _egenskaper_, klistra sedan in detta efter _Kommando_:






`chromium-browser --enable-plugins --enable-greasemonkey --enable-user-scripts --enable-extensions`




Ni kan nu använda Chromium tillsammans med _Flash_, skulle det ändå krångla så dubbelkolla att ni startar Chromium med _Kommando_ enligt ovan.

Ta även en titt på Chromes alla [teman](https://tools.google.com/chrome/intl/en/themes/index.html), vilka fungerar bra också med Chromium.

Hör av er om det uppstår några problem eller om ni har några andra funderingar.
