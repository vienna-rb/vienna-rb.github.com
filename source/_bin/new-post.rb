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

DEFAULT_CONTRIBUTORS = {
  'Laura'  => 'https://www.twitter.com/alicetragedy',
  'Ramón'  => 'https://twitter.com/senorhuidobro',
  'Markus' => 'https://twitter.com/nuclearsquid',
  'Max'    => 'https://www.twitter.com/klappradla',
}

template = DATA.read

posts_path = File.join(File.dirname(__FILE__), '..', '_posts')
post_paths = Dir[File.join(posts_path, '*-picks.md')]

# We need this for indexing the filenames to get the edition number
post_filenames = post_paths.map{|p| File.basename(p)}

last_post_path = File.basename(post_paths[-1])
last_post_date = Date.parse(last_post_path)

new_post_date = last_post_date + 7

# The post on 2016-08-17 was the 172rd edition, so count upwards from there
post_172rd_edition_index = post_filenames.index("2016-08-17-picks.md")
# By substracting the index of the last post fromt he 172nd post (and adding 172), we
# get the edition number of the last post. Add one to get the new edition number.
new_edition_number = 172 + (post_filenames.index(last_post_path) - post_172rd_edition_index) + 1
new_edition_number_words = new_edition_number.localize(:en).to_rbnf_s("SpelloutRules", "spellout-ordinal").gsub(' ', '-')

template_binding = binding()
template_binding.local_variable_set(:full_date, new_post_date.strftime("%Y-%m-%d"))
template_binding.local_variable_set(:short_date, new_post_date.strftime("%m/%d"))
template_binding.local_variable_set(:edition_number, new_edition_number_words)
template_binding.local_variable_set(:contributors, DEFAULT_CONTRIBUTORS)

new_post_content = ERB.new(template).result(template_binding)

new_post_path = File.join(posts_path, "#{new_post_date.strftime("%Y-%m-%d")}-picks.md")
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

<% for contributor, index in contributors.keys.each.with_index(0) %>
##### [<%= contributor %>][<%= (index * 4) + 1 %>]
- [][<%= (index * 4) + 2 %>] -
- [][<%= (index * 4) + 3 %>] -
- [][<%= (index * 4) + 4 %>] -
<% end %>

<% for contributor_link, index in contributors.values.each.with_index(0) %>
[<%= (index * 4) + 1 %>]: <%= contributor_link %>
[<%= (index * 4) + 2 %>]:
[<%= (index * 4) + 3 %>]:
[<%= (index * 4) + 4 %>]:
<% end %>
