#!/usr/bin/env ruby
# This script generates a new, empty picks post. It automatically figures out the next date,
# and fills out all the parts that it can fill out (ie., everything except the picks themselves)
# Simply run the script, and it'll tell you what file was generated.

require 'date'
require 'erb'

begin
  require 'twitter_cldr'
rescue LoadError
  $stderr.puts "You need to install the `twitter_cldr' gem first!"
  exit
end

Contributor = Struct.new("Contributor", :name, :slug, :link)

DEFAULT_CONTRIBUTORS = [
  Contributor.new('Laura',  'laura',  'https://www.twitter.com/alicetragedy'),
  Contributor.new('Ramón',  'ramon',  'https://twitter.com/senorhuidobro'   ),
  Contributor.new('Markus', 'markus', 'https://twitter.com/nuclearsquid'    ),
  Contributor.new('Max',    'max',    'https://www.twitter.com/klappradla'  ),
]

DEFAULT_LINKS_PER_CONTRIBUTOR = 3


def render_post_template(template, post_date, edition_number, contributors, links_per_contributor)
  # Technically, we could get away by simply setting the appropriate local variables,
  # and then just pass `binding()` to ERB#result. But doing so results in two apparently assigned
  # but unused variables, so make the usage explicit.
  template_binding = binding()
  template_binding.local_variable_set(:full_date, post_date.strftime("%Y-%m-%d"))
  template_binding.local_variable_set(:short_date, post_date.strftime("%m/%d"))

  ERB.new(template, nil, '-').result(template_binding)
end


def calculate_edition_number(post_filenames, last_post_path)
  # The post on 2016-08-17 was the 172rd edition, so count upwards from there
  post_172rd_edition_index = post_filenames.index("2016-08-17-picks.md")

  # By substracting the index of the last post fromt he 172nd post (and adding 172), we
  # get the edition number of the last post. Add one to get the new edition number.
  172 + (post_filenames.index(last_post_path) - post_172rd_edition_index) + 1
end


def number_to_words(number)
  number.localize(:en).to_rbnf_s("SpelloutRules", "spellout-ordinal").gsub(' ', '-')
end


post_template = DATA.read

posts_path = File.join(File.dirname(__FILE__), '..', '_posts')
post_paths = Dir[File.join(posts_path, '*-picks.md')]

# We need this for indexing the filenames to get the edition number
post_filenames = post_paths.map{|p| File.basename(p)}

last_post_path = File.basename(post_paths[-1])
last_post_date = Date.parse(last_post_path)

new_post_date = last_post_date + 7

new_edition_number_words = number_to_words(calculate_edition_number(post_filenames, last_post_path))

new_post_content = render_post_template(
  post_template,
  new_post_date,
  new_edition_number_words,
  DEFAULT_CONTRIBUTORS,
  DEFAULT_LINKS_PER_CONTRIBUTOR
)

new_post_filename = "#{new_post_date.strftime("%Y-%m-%d")}-picks.md"

new_post_path = File.join(posts_path, new_post_filename)
File.open(new_post_path, 'w+') do |new_post_file|
  new_post_file.write(new_post_content)
end

puts "Wrote new post template to #{File.basename(new_post_path)}"

__END__
---
layout: post
title: "Picks / what the vienna.rb team thinks is worth sharing this week"
date: <%= full_date %> 14:00
published: false
comments: true
categories:
  - picks
---

### <%= short_date %> Picks!

In a series on this website we'll entertain YOU with our picks - or: what we think is worth sharing - every week.
Books, articles, gems, fun stuff... you're in for an eclectic mix! So, here's for the <%= edition_number %> edition:

<% for contributor in contributors %>
##### [<%= contributor.name %>][<%= contributor.slug %>]
<% for idx in 1..links_per_contributor -%>
- [][<%= contributor.slug %>-<%= idx %>] -
<% end -%>
<% end %>

<% for contributor in contributors %>
[<%= contributor.slug %>]: <%= contributor.link %>
<% for idx in 1..links_per_contributor -%>
[<%= contributor.slug %>-<%= idx %>]:
<% end -%>
<% end %>
