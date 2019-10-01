# frozen_string_literal: true

require 'test_helper'

class WanderungTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Wanderung::VERSION
  end
end
