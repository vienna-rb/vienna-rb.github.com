---
layout: post
title: "Vienna.rb #18 Recap"
date: 2014-11-06 10:14:52 +0200
comments: true
published: true
author: "Floor Drees (@floordrees)"
categories:
  - recap
  - meetup
---

Thursday November 6 another one of our meetups took place at [sektor5](http://sektor5.at/). The 18th to be precise - and as one of our attendees rightly noticed: we're grown-ups now! Drinks were on [Dailycious](http://dailycious.co/) and Susanne Mairhofer ([@alittlesue](http://www.twitter.com/alittlesue)) told us they are looking for developers. Just as [Rails Girls Bratislava](http://railsgirls.com/bratislava) is looking for coaches for their December 5-6 workshop. And [.concat()](http://conc.at) - a Salzburg web development conference - is looking for speakers. AND we are looking for guest picks. We try to publish our 'very best in the Ruby world' every Wednesday - in case you'd like to contribute, [fork our repo](https://github.com/vienna-rb) and add your picks!

### Stop the user from changing your Rails Models!
Phillipp Röll's ([@phillipp](http://www.twitter.com/phillipp)) thumb rule is: (almost) never let the user change a ActiveRecord model. And: always use a form object. Why? Because otherwise you will 'mess up everything'. *"The real world is complex, most apps have complex business logic that is not necessarily tied to data. Why would ActiveRecord be the best place for it? Plus: if you put your business logic into ActiveRecord, you will build at least one god object."*

Parameter security is one of the most important security features of your app, Phillipp continues. In Rails 3.x you'd utilize ```attr_accessible``` (in Rails 4 this then got wrapped up in the protected_attributes gem). In Rails 4 parameter security is put into controller: ```strong_parameters```.

Phillipp's wishlist for forms includes:
- complete independency of models
- clean controller code
- validations "as usual" == as in active record
- easily testable and secure mass assignments
- explicit business logic

What can you use today to get all the good stuff? Well, Phillipp uses his own wrapper but he recommends taking a look at [active_interaction](https://github.com/orgsync/active_interaction) and [mutations](https://github.com/cypriss/mutations). In order to look ar Phillipp's code, [clickety-click here](https://github.com/phillipp/vienna-rb-forms).


### Building HTTP JSON APIs w/ Ruby

Gerald Bauer ([@geraldbauer](http://www.twitter.com/geraldbauer)) is trying to collect all Austrian beers. Help him over at [at365.herokuapp.com](http://at365.herokuapp.com/). Then, this Sinatra thing. Gerald praised the simple (yet powerful and flexible) micro web framework and its 2000 lines of code. "Many micro frameworks are inspired by Sinatra. Examples are Express.js, Scotty for Haskell, Dancer for Perl, Fitzgerald for PHP, Ratpack for Groovy, Zappa for CoffeeScript, Martini for Go and many more.

Why would one use Sinatra building API's? Because of its single file scripts, because it's easy to package up into a gem, and because Sinatra lets you build command line tools and mount app inside app (including Rails).

Arriving at the JSON (JavaScript Object Notation) part of his talk, Gerald mentioned that JSON is built into Ruby 2.x as a standard library. Unlocking 'many more options' Gerald recommended [jbuilder](https://github.com/rails/jbuilder) and [Wunderbar](https://github.com/rubys/wunderbar/). And then he touched [Rack](http://rack.github.io), which lets you mix ‘n’ match servers and apps. And... stack apps inside apps inside apps inside apps inside apps. A Sinatra app is actually a Rack app. More micro framework alternatives are [Rum](https://github.com/chneukirchen/rum), a grand unified mapper for Rack apps, [Cuba](http://cuba.is/), a tiny but powerful mapper for Rack apps and [Roda](http://roda.jeremyevans.net/), a routing tree web framework.  

Less lines of code means faster code and more requests per second. Gerald is a big fan of 'only using what you need'. In that aspect Cuba has 152 lines, Sinatra 1476, Rails 13181, and [(almost) Sinatra](https://github.com/rkh/almost-sinatra) 7. He also mentioned that building HTTP JSON APIs with Go is pretty powerful: *"It is a kind of a 'better' more 'modern' C."* Code gets compiled (to machine-code ahead-of-time) and linked to let you build (small-ish) zero-dependency all-in-one binary (file) programs. No virtual machine or byte code runtime or just-in-time compiler machinery needed. Plus: it includes garbage collector.

Or of course just try a NoSQL database and get JSON HTTP APIs (almost) for “free”.

### W2UI to the rescue
**Alternative title:** I built this awesome app, but my customer cannot use it...

Stefan Haslinger ([@informatom](http://www.twitter.com/informatom)) did just that. Running his ecommerce app by his customer, he quickly realised he needed an 'actual useable' UI. The Hobo bootstrapping framework for Ruby on Rails only introduced loads of user interface screens. *"W2UI gives us, within only 60K of JavaScript, Layouts (and nesting of layouts), Grids, Forms, Toolbars, Sidebars, Popups and Overlays."* Additionally, Stefan used Treewidget (provided by Fancytree) and made use of JQueryUI's draggable and droppable functionality to create a tree for the ProductCategories on the left and a detail grid for the Products on the right. Using a subsite Productmanager he tried to 'separate thing out'. Follow along with his [tutorial](http://informatom.com/presentations/hobo_w2ui/hobo_w2ui.html#28).

Hobo has it's own templating engine DRYML. DRYML is an XHTML-extension, similar to the now famous web components, but to be used serverside. It gets compiled to .erb like in standard Rails. Which in turn is then compiled to HTML, again, like in Rails.

Tags are either called like this:

```<tag attr1 attr2/>```

or if they have params:

```
<tag attr1 attr2>
<param1:>param content</param1:>
<param2:>more param content</param2:>
</tag
```

Stefan wrote a small hobo_w2ui gem to integrate assets easily (amongst other things) and would - in a second talk on this subject - talk about either handling 100 thousands of data sets with Ajax, Active model serializer usage or the integration with Hobo and Rails standard actions.

### Readme Driven Development
I ([@floordrees](http://www.twitter.com/floordrees)) then got to make a case for Readme Driven Development which served as an introduction into the discussion round. Explaining my problem with popular software methodologies where we only start writing documentation for our apps after we have developed them, I tried to get across that writing down the requirements (BDD), intended usage and example use cases of your app, documentation writing becomes a vital part in the decision making process - making damn sure we don't feature-freak.

RDD should be considered a light version of DDD. By restricting your design documentation to a single file that is intended to be read as an introduction to your software, RDD keeps you safe from lengthy or overprecise specifications. Starting with a Readme for your next project helps you to be crystal clear with all stakeholders including oneself about the intentions and to collect feedback before you even start formatting your page, before you run your scaffolds. Before anything else. A Readme summarizes the project as they are attached alongside the versioned code. They provide context and indicate where and how people can report bugs or suggestions and how people can contribute to the project.

The discussion then started by Lars asking whether there is already a way in the Ruby ecosystem to generate Readme templates automatically. Phillipp mentioned that the Bundler gem generates excellent guidelines for documentation. Clemens noted that it's difficult to rate the quality of documentation or a Readme "automatically". And Gerald mentioned that a great driver behind the success of Sinatra is its Readme.

The major blocker seems the hassle of updating the documentation every time one changes the code. Both Günther and Floor then argued that a Readme is actually just an introduction to your code/project and will therefore not change (that) much in its core. Aaron mentioned that it may be some kind of code-smell when your Readme breaks.

everyone was unanimous on Floor's question of whether we should educate devs to become writers: if you can write code, and explain your code to someone else, you can also write the documentation.

The discussion then moved into its final "round", where we talked about how writing documentation might help put a project into prospective. Clemens confessed to having a problem with starting with the Readme first. Aaron explains it's a way for him 'to put the whole project into my head, to see the big picture and use cases', enabling him to break things down into smaller pieces. Phillipp recommended checking out [Thinking for Programmers by Leslie Lamport](http://channel9.msdn.com/Events/Build/2014/3-642) and Stefan found [a Ruby gem](http://rtomayko.github.io/rocco) that reads Ruby source files and produces annotated source documentation.

[Our next meetup](http://www.meetup.com/vienna-rb/events/202353822/) will be sponsored by Elance-oDesk. And there will be Gluehwein. Lecker.
