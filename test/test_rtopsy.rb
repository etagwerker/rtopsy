require File.dirname(__FILE__) + '/test_helper.rb'

class TestTopsy < Test::Unit::TestCase

  def setup
  end
  
  def test_truth
    assert true
  end
  
  #tests the urlinfo method
  def test_urlinfo
    puts 'testing url info'
    urlinfo = Topsy::Base.urlinfo("http://www.aycron.com")
    assert urlinfo.class == Topsy::UrlInfo, "Class of urlinfo method doesn't return UrlInfo"
  end
end
