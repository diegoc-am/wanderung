# frozen_string_literal: true

require 'test_helper'

require 'logger'

class WanderungTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Wanderung::VERSION
  end

  def test_initialize_with_a_hash
    Wanderung.new(database: 'artists', connection_uri: 'sqlite://test/test.db', path: 'test/artists').run
  end

  def test_initialize_with_an_array
    Wanderung.new([
                    { database: 'artists', connection_uri: 'sqlite://test/test2.db', path: 'test/artists' },
                    { database: 'artists', connection_uri: 'sqlite://test/test3.db', path: 'test/artists' }
                  ]).run
  end

  def test_add_a_logger
    Wanderung.new([
                    { database: 'artists', connection_uri: 'sqlite://test2.db', path: 'test/artists' },
                    { database: 'artists', connection_uri: 'sqlite://test3.db', path: 'test/artists' }
                  ]).tap { |e| e.logger = Logger.new(STDOUT) }.run
  end
end
