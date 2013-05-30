---
layout: page
title: "about"
date: 2013-05-30 16:04
comments: true
sharing: true
author: at
footer: true
---
{% codeblock about-vienna.rb lang:ruby %}
require 'uri'
class Vienna
  def contact
    "hello@vienna-rb.at"
  end

  def where?
    Struct.new("Location", :name, :address, :details)
    Struct::Location.new("sektor5", "Siebenbrunnengasse 44, 1050 Wien")
  end

  def when?
    Time.new(2013,6,6, 18,00,0, "+01:00")
  end

  def what_and_why?
    URI("http://www.meetup.com/vienna-rb/events/111533282/")
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
    "v0.0.4 - 2013-05-30 16:04"
  end
end
{% endcodeblock %}
