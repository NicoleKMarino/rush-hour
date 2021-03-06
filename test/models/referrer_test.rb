require_relative '../test_helper'

class ReferrerTest < Minitest::Test
  include TestHelpers

  def test_it_can_create_referrer
    website = Referrer.create(address:"google.com")
    assert_equal "google.com", website.address
  end

  def test_uniqueness
    create_payload(1)
    create_payload2(2)
    create_payload4(3)
    create_payload4(3)
    assert_equal 3, Referrer.count
  end

  def test_top_three_referres_for_url
    create_payload(2)
    create_payload3(4)
    assert_equal ["http://jumpstartlab.com0", "http://galvanize.com"], Referrer.top_three_referrers_for_url("http://jumpstartlab.com/blog")
  end


  def test_doesnt_create_if_missing_field
    Referrer.create
    assert_equal 0, Referrer.count
  end

  def test_for_relationship_with_payload_request
    create_payload(1)
    payload= PayloadRequest.find(1)
    assert_equal "http://jumpstartlab.com0", payload.referrer.address
  end

  
end
