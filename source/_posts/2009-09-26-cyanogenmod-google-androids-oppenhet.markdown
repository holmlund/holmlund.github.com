---
comments: true
date: 2009-09-26 19:16:00
layout: post
slug: cyanogenmod-google-androids-oppenhet
title: CyanogenMod, Google & Androids öppenhet?
wordpress_id: 41
categories:
- Android
- Teknik
- Utveckling
post_format:
- Notering
tags:
- Android
- Google
---

Ett cease & desist till skaparen av den populära androidmodifikationen CyanogenMod har skapat rabalder i communityt.

Det har nu gått några dagar sedan Google skickade ett [cease & desist](http://en.wikipedia.org/wiki/Cease_and_desist) till utvecklaren av [CyanogenMOD](http://www.cyanogenmod.com/), vilket är en mycket populär ROM för [Android](http://www.android.com/) som förutom ett stort antal optimeringar och förbättringar som exempelvis _multi touch_ och [BFS](http://ck.kolivas.org/patches/bfs/bfs-faq.txt) var en av de första som byggde på nya [Android 1.6 Donut](http://developer.android.com/sdk/android-1.6-highlights.html).

Att Google reagerar på det här sättet är något som verkligen [chockat och upprört](http://phandroid.com/2009/09/25/eff-google-screw-android-the-backlash-begins/) många androidanvändare, inklusive mig själv. Få hade blivit förvånade om det kommit från Apple eller Microsoft, men i det här fallet kom det något oväntat då Google själva talat så varmt för Androids öppenhet och vilka fördelar det innebär gentemot övriga plattformer.
<!-- more -->
Dan Morrill från Google har kommenterat det hela på [Androids utvecklarblogg](http://android-developers.blogspot.com/2009/09/note-on-google-apps-for-android.html) där han framhäver att även om plattformen till Android är öppen källkod så finns det propetiära och icke öppna komponenter som inte är okej att inkludera i modifierade ROMar. Att göra modifikationer utan Google’s eller andra proprietära komponenter verkar dock vara lättare sagt än gjort:

> Everyone who is insisting that its just “oh no, don’t distribute gmail”.. I challenge you to try AOSP. It’ll take some time, but grab the source and build it. Without proprietary bins. (No, seriously. Don’t copy a bunch of crap off the old image, don’t include any of the proprietary bins that -you are not allowed to redistribute-.)
It won’t boot. If you manage to get past that, it won’t make noise. LED doesn’t work. No way to talk to the cell modem (so no cell services, at all.) Good news, the wifi will probably work. But even if you include the (proprietary!) RIL, it won’t make or break calls (oops, setting the initial setup/provisioning flag is “proprietary”.) Seriously, this isn’t a case of “oh, just stop distributing gmail”. This is - as ryebrye said in JBQ’s thread - a case of “AOSP doesn’t work AT ALL without tons of proprietary crap”.

… Other problems - you can’t make or break calls (oops, “setup” is proprietary). Calendar has such dependencies on sync that it just flat doesn’t work. (I heard rumours that contacts may be the same way.) The really sick thing is, HTC has already made non-google versions of these apps. But - thanks to the android licensing - they’re closed
source too..

_Från [Android-Discuss](http://groups.google.com/group/android-discuss/browse_thread/thread/b0537bc784852862/274c391f2628c4f1#274c391f2628c4f1) skrivet av Disconnect_

Det var till en början ganska tyst från Cyanogen förutom ett antal bittra kommentarer på Twitter om det absurda i situationen samt att CyanogenMod i sin nuvarande form var ett avslutat kapitel. Nu har han dock gått ut och kommenterat händelserna lite mer utförligt i ett inlägg på [cyanogenmod.com.](http://www.cyanogenmod.com/home/the-current-state)

> The issue that’s raised is the redistribution of Google’s proprietary applications like Maps, GTalk, Market, and YouTube. These are not part of the open source project and are only part of “Google Experience” devices. They are Google’s intellectual property and I intend to respect that. I will no longer be distributing these applications as part of CyanogenMod. But it’s OK. None of the go-fast stuff that I do involves any of this stuff anyway. We need these applications though, because we all rely so heavily on their functionality. I’d love for Google to hand over the keys to the kingdom and let us all have it for free, but that’s not going to happen. And who can blame them?

There are lots of things we can do as end-users and modders, though, without violating anyones rights. Most importantly, we are entitled to back up our software. Since I don’t work with any of these closed source applications directly, what I intend to do is simply ship the next version of CyanogenMod as a “bare bones” ROM. You’ll be able to make calls, MMS, take photos, etc. In order to get our beloved Google sync and applications back, you’ll need to make a backup first. I’m working on an application that will do this for you.



Genom ett sådant kryphål verkar det vara möjligt för användare att använda CyanogenMod och fortfarande dra nytta av Google sync och alla applikationer. Eftersom det rör sig om att göra en backup av saker som redan fanns på din telefon så kan man dock inte som tidigare förlita sig på Google-uppdateringar från Cyanogen utan är helt i händerna på respektive leverantör. Frågan är också hur HTC och andra som har proprietära komponenter ställer sig till modifikationer.

Ett antal personer har därför gått ut med [Open Android Alliance](http://openandroidalliance.com/) för att ersätta all proprietär kod och skapa en välfungerande öppen plattform för android.

[Jean-Baptiste Queru](http://twitter.com/jbqueru) som är androindutvecklare på Google verkar också ha något [liknande](http://groups.google.com/group/android-platform/browse_thread/thread/cfd4181d56c05a7a&cd=US&hl=en) i åtanke.

Jean-Baptiste satte också igång en hel del rykten när han under tiden som diskussionerna om Cyanogen gick som hårdast twittrade följande:


> To my Apple, Microsoft and Palm buddies: are you hiring to work on mobile stuff?

…

Big change in conditions make me reconsider my employment options.


Personligen så hoppas jag att Google omprövar sin inställning till utvecklingscommunityt och öppnar upp för användandet av alla deras androidkomponenter, i det långa loppet tror jag dom vinner mer på detta. De tillverkare som köper licenserna av Google har också ett intresse av att se android växa så stort och populärt som möjligt och här finns verkligen chansen att skapa en levande och kreativ mobilplattform.

Jag stödjer givetvis helhjärtat alla satsningar på att ersätta samtlig proprietär kod men helst av allt så vill jag förstås kunna använda senaste versionen av Google sync på min moddade androidlur med rent samvete.

_Stöd CyanogenMod genom android-applikationen [Save CyanogenMod Petition](http://www.cyrket.com/package/com.mhuang.savecyanogenmod), en [Twibbon](http://twibbon.com/cause/cyanogen) till din Twitter eller bäst av allt genom att [donera en slant](http://www.cyanogenmod.com/) till Cyanogen själv._

_Se också [Swedroid](http://www.swedroid.se/google-uppror-forbjuder-cyanogen-att-fortsatta-utveckling-av-rom-fil), [XDA-Developers](http://forum.xda-developers.com/showthread.php?t=564623), [Android and Me.](http://androidandme.com/2009/09/news/google-responds-to-cyanogenmod-controversy/) och [eWeek.](http://www.eweek.com/c/a/Linux-and-Open-Source/Google-Irks-Android-Developers-with-Cyanogen-Move-837741/?kc=rss)_

