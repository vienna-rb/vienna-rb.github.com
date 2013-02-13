---
layout: page
title: "about"
date: 2013-02-13 14:15
comments: true
sharing: true
footer: true
---
{% codeblock about-vienna.rb lang:ruby %}
class Vienna
  def contact
    "viennarb@gmail.com"
  end
 
  def where?
    Struct.new("Location", :name, :address, :details, :longitude, :latitude)
    Struct::Location.new("Platogo Office", "Salmgasse 2A, 1030 Wien", "", nil, nil)
  end
 
  def when?
    Time.new(2013,3,7, 18,00,0, "+01:00")
  end
 
  def what_and_why?
    #PressRelease
  end
 
  def who?
    organizers = {
      "Floor Drees" => "@floordrees",
      "Anton Bangratz" => "@tony_xpro",
      "Andreas Tiefenthaler" => "@pxlpnk"}
  end
 
  def version
    "v0.0.2 - 2013-02-13 14:39"
  end
end
{% endcodeblock %}
