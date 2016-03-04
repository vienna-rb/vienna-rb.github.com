---
layout: post
title: "Viennarb #30 - Summary"
date: 2016-02-26 20:00:43 +0100
comments: true
categories:
  - meetup
  - recap
---

Hello! We had a lot of fun at our thirtieth edition of Vienna.rb. Quite a milestone! As commemoration, our lovely meetup-ers were treated to delicious cupcakes and banana bread.

If you missed out on the deliciousness, fret not! Here's the brain food:

## Our Talks

### [Tawan](https://twitter.com/tawan) — Domain Specific Languages — What are they good for, and how does Ruby help

Tawan was very kind to introduce us to the world of Domain Specific Languages, or DSLs, for short. He started by drawing up the distinction between technologies that fall within the definition of a DSL, and which don't:

#### DSLs

- SQL
- HTML
- Rspec

#### Not a DSL

- Ruby
- Java
- PHP

When trying to categorize these, it's important to think about what you want to achieve against how you want to achieve.

The fun image of an onion chopper was brought up: It's easy to use, it's safe, easy to explain and to learn. This is what we want to achieve when designing a DSL! Thank you Tawan!

### [Emi](https://twitter.com/michaelem) — Super fast image resizing with ruby

Emi gave us some insight into what goes on during work!

Creating smaller or bigger versions of images in a ruby application needs to be done quickly! Usual toolks used for this are things like [`imagemagick`](http://www.imagemagick.org/script/index.php) or [`CoreImage`](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Conceptual/CoreImaging/ci_intro/ci_intro.html).

On this fateful day, Emi introduced us to [`libvips`](https://github.com/jcupitt/libvips). On the surface, its advantages include:

- Being quicker than `imagemagick`
- Using less memory than the above
- Being open source

We have a nice ruby wrapper, too! It's called [`ruby-vips`](https://github.com/jcupitt/ruby-vips). 

Other nice things include calling up header data without reloading pixels, shrinking an image upon loading, specifying target resolutions quickly, and more!

Of course, there are downsides:

- It's not as simple or as high level as `rmagick`
- It has the occasional memory leak
- The contribution is not so active

Thanks for the talk, Emi!

### [Max](https://twitter.com/klappradla) — Mongo on demand — NoSQL in PostgreSQL 

In Max's talk, we dive into the world of NoSQL, which is a term for databases that don't use tables.

NoSQL databases have their uses in the world of data storage. For example, [Trello](https://trello.com/) cards have several parts into them that don't fit a specific data type.

Max showed us how to use a [Mongo](https://www.mongodb.org/)-like data storage in [postgres](http://www.postgresql.org/). This is done using [JSON](http://www.postgresql.org/docs/9.4/static/datatype-json.html). Postgres offers either JSON or JSONB, the latter of which is a decomposed binary format, but allows indexing, which means faster queries.

After showing us a demo, Max made it apparent that using JSONB is much faster, and using the `store_accessor` declaration in `rails` lets us declare fields that will be accessed often.

One thing that needs to be noted, though, is that the JSONB type is available starting with postgres 9.4. Thanks for sharing, Max!

## After our talks

Brave volunteers came up and gave us some tips and insights into their work. Below is a list of these (should be most, if not all):

  - [Where2Help](http://where2help.at/): "Organizational app for NGOs and Volunteers"
  - [Pickaxe book](https://pragprog.com/book/ruby/programming-ruby)
  - [JavaScript: The Definitive Guide](http://shop.oreilly.com/product/9780596805531.do)
  - [JavaScript Patterns](http://shichuan.github.io/javascript-patterns/)
  - [Biertaucher Podcast](http://spielend-programmieren.at/de:podcast:biertaucher:start)
  - [Rials Doctrine](http://rubyonrails.org/doctrine/)
  - [Vienna.html — Static website meetup](http://viennahtml.github.io/)    
  - [Static times](http://statictimes.github.io/)
  - [Jekyll](http://jekyllrb.com/)
  - [Hugo](https://gohugo.io/)

We wrap up with some friendly chit chat.

Wanna stay in touch? Follow us [@viennarb](https://twitter.com/viennarb).

'Til next time!
