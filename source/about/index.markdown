---
layout: page
title: "about"
date: 2013-02-13 14:15
comments: true
sharing: true
footer: true
---
{% codeblock about-vienna.rb lang:ruby %}
require 'uri'
class Vienna
  def contact
    "@viennarb"
  end

  def where?
    Struct.new("Location", :name, :address, :details)
    Struct::Location.new("sektor5", "Siebenbrunnengasse 44, 1050 Wien")
  end

  def when?
    Time.new(2013,4,12, 18,00,0, "+01:00")
  end

  def what_and_why?
    URI("http://vienna-rb.at/blog/2013/03/19/second-meetup-to-take-place-at-co-working-space-sektor5/")
  end

  def who?
    organizers = {
      "Floor Drees" => "@floordrees",
      "Anton Bangratz" => "@tony_xpro",
      "Andreas Tiefenthaler" => "@pxlpnk"}
  end

  def to_s
    where = where?.to_a.compact.join(" ")
   "The next vienna.rb takes place at #{where} and starts at #{when?}. For more see: #{what_and_why?}"
  end


  def version
    "v0.0.3 - 2013-03-27 19:39"
  end
end
{% endcodeblock %}
