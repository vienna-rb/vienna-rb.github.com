---
layout: post
title: "Vienna.rb 31st Edition Summary"
date: 2016-04-04 23:03:46 +0200
comments: true
categories: 
  - meetup
  - recap
---
Hi! Couldn't make it to our fun-filled 31st meetup? Put your regrets to rest! Here's what you missed:

## Our Talks

### [Gerald](https://twitter.com/viennahtml): Stay Static — Jekyll vs. Middleman — Build Static (Web) Sites w/ Ruby

We started with Gerald comparing two of the most popular Ruby-based static website generators: [Middleman](https://middlemanapp.com/) and [Jekyll](https://jekyllrb.com/).

He went over their biggest differences. Middleman uses [ERB](http://ruby-doc.org/stdlib-2.3.0/libdoc/erb/rdoc/ERB.html), whereas Jekyll uses [Liquid](https://jekyllrb.com/docs/templates/). Middleman uses the asset pipeline, whereas Jekyll doesn't. Middleman sites need a Gemfile, whereas Jekyll-made ones don't necessarily.

He then went over why we should use Liquid, vouching chiefly for its security over ERB.

Finally, he invites us to check out [Static Times](https://twitter.com/statictimes), keeping followers up to date on all things static site generators. Thanks, Gerald!

### [Thomas](https://twitter.com/_gettalong): Using Markdown (HTML “Shortcodes” in Plain Vanilla Text) with the kramdown Library and Tools 

Next up, Thomas showed us all about Markdown, specifically with his gem for parsing Markdown, [kramdown](http://kramdown.gettalong.org/).

He started by answering the question "Why use Markdown?" quite quickly: HTML is verbose.

After giving us the lowdown on how to use Markdown, Thomas told us the problem with it. There are over 70 implementations of Markdown and there's little to no standardization thereof. And where does kramdown fit in all this? Well, it's a parser written purely in Ruby based on Maroku and Markdown extra. 

Below are some of the extended features that kramdown offers:
- AST parsing
- Header IDs
- Fenced code blocks
- Definition lists
- Simple tables with headers and alignments
- Footnotes
- End Of Block
- Inline attribute lists

Interesting stuff, thank you Thomas!

### [Stefan](https://twitter.com/informatom): Risk mitigation in Ruby projects

Finally, Stefan showed us what became the discussion round: How can we manage risk in a project, specifically a ruby one?

He began by opening a huge Gemfile and going over it. Having so many dependencies and code can introduce a lot of risk.

He then told us about the [Truck/Bus Factor](https://en.wikipedia.org/wiki/Bus_factor), that is the measure of how many people would need to drop from a project before it became unmaintainable. He then shared a breakdown of the [Truck Factor](http://mtov.github.io/Truck-Factor/) numbers across several projects, which was staggering!

We then went into a friendly discussion about risk formalization, stakeholders, and other factors. Thank you for the talk, Stefan!