---
layout: post
title: "Vienna.rb #16 Recap"
date: 2014-09-05 10:14:52 +0200
comments: true
published: true
author: "Anton Bangratz (@tony_xpro), Floor Drees (@floordrees)"
categories:
  - recap
  - meetup
---
### After a summer break, we take up momentum again

Yesterday, on Thursday, September 9th, Rubyists met in Vienna again to listen to interesting talks and share their
thoughts in discussions both formal and informal.

{% img /images/vienna_rb_16_impressions.png 'Impressions from vienna.rb#16' 'Pictures from vienna.rb#16' %}
<!-- more -->
After our summer break, we wanted to start with a lot of new energy and on time - and we did! At 6.30pm sharp, the first
talk started, namely

####__ActiveAdmin__ by Basti ([@bastilian](https://twitter.com/bastilian))

Basti introduced us into a fast and easily installed solution for editing data. The interface is slick, and the features
that let you select data exposure, user authentication and even a permission system gives anyone the option to use it as
an administrative interface without having to create a whole application by yourself. While our speaker dashed off to be
on time for his flight to the Netherlands (have fun, Basti!), the next talk,

####Continuous Deployment of DNS Records by Ben ([@ben](https://www.twitter.com/beanieboi))

started. It gave us a short and pointed introduction into the troubles you will run into when dealing with DNS web
interfaces. Problems create solutions, and so with a combination of git version control, Github workflows, a DNS service
providing a scriptable API, JSON data files and ruby scripts as glue code come together in a neat package that avoids
conflicts, enforces reviews and minimizes risk. Well done! (And we got promised that the code will be released on Github
soon, too! And he's _looking for a name for the project_, so feel free to suggest something!)

Next up, we heard about

####Gems of the month: factbook and worldlite by Gerald Bauer

It is a well known fact that governmental organisations all over the world are gathering data. A lesser known fact is
that the CIA (yes, **this** US Intelligence Agency) has been gathering and publishing data about a slew of information
on 267 world entities (like countries, the EU, etc) for 30 years in the [World
Factbook](https://www.cia.gov/library/publications/the-world-factbook/). First having annually printed editions, now
it's easily accessible on the web and updated weekly. With easily, I mean that it's quite easy to look at, but what
about a more technical representation? Because of the fact that the data is in the Public Domain, paid for by the
US tax payer, it was possible to create a scraper called [factbook](https://github.com/worlddb/factbook.ruby) that
downloads that data into ruby hashes, making it easy to store them or use the data directly. Neat, huh?

Gerald then presented another real gem containing useful public domain country data:
[worldlite](https://github.com/worlddb/world.lite.ruby). A great accumulation of useful factoids like membership in G20
or FIFA or the United Nations, the wikidata id, factbook urls etc. Everything is organised in constants which contain
simple to use objects. Great!

Before the break, a raffle was started with prices being t-shirts and tote bags from the Rails Girls Linz event earlier
this year! Here are the proud winners:

{% img /images/vienna_rb_16_raffle_winners.jpg 'Winners of the raffle' 'Raffle winners at vienna.rb#16' %}

After a short break, we started with the new (for me at least) format, the formal (kinda) discussion. Yours truly was
doubly excited because I got the chance to present one of the questions that I didn't find an easy answer to, namely

####When Should A Beginner Start Using TDD

While I presented my initial thoughts and trying to convey my impression of what I think that TDD is, it was easy to
slip into 'discussion mode' because of the genuine interest and great discipline. At this point, I want to shout out to
all vienna.rb users:

__Thanks so much for your tireless contributions and great support. Being able to experience this is one of the greatest
things possible for me!__

For me, it raised a few very interesting points I haven't considered (whee!), the most convincing being that people
practise programming early on by implementing a solution against an existing test, learning how to read and structure
tests while using tests as a specification and design guideline. From there it seems to be a natural step to write the
tests yourself.

The discussion then slid off a bit into 'Why bother with TDD' and 'Good practises' territory, making it a bit broader
than intended but raising a lot of very interesting and valid points. A few of them:

  - TDD is a lot of work for nothing, you should start testing when 90% of the code is done.
  - Test first development without refactoring is pointless (and not TDD).
  - You should start off with TDD at the very beginning to avoid the tedious work of writing tests after implementation.
  - Starting with TDD is hard, especially writing the very first test.
  - Writing high level (acceptance) tests first gives you a guideline to which unit tests you need next, but might
    frustrate beginners.
  - Starting a project without a preliminary architecture and design decision, regardless if TDD is being used or not,
    is a exercise in futility.
  - Tests that should be used as documentation must be well structured and have great names/descriptions.

With great discipline the topic was brought back to track for another short discussion round and conclusion. The points
that were made are:

  - Using TDD as a teaching tool itself (the mentor writes the tests and lets the mentee solve the problem) helps to
    ease people into the practise itself.
  - TDD (specifically: the resulting tests) helps you to communicate architecture and designs to people joining the
    project later
  - The above holds true for code that you haven't touched for a few weeks for yourself.
  - As programming is easy and programming well is hard, testing well is sometimes even harder.
  - Therefore, it has to be practised a lot.
  - The mentee also needs to know that no number of tests can cover all bases. If there is a test missing, you write it
    when necessary.
  - Practising gives you the confidence to know what to test when and how - and when to stop

After the discussion, most people stayed for a chat and a beer, and the discussions were continued and broadened.
Promise: I'll do that series of talks about SOLID together with Aaron, and we'll be well prepared for any and all
questions!

Thanks again to all participants, and I am definitely looking forward to the next meetings!
