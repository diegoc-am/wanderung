# frozen_string_literal: true

require 'sequel'

class Wanderung
  ##
  # Object to represent a database, with its migration counterpart
  class Database
    Sequel.extension :migration
    def initialize(connection_uri:, path:, logger:)
      @logger = logger
      @db = Sequel.connect(connection_uri).tap { |db| db.logger = logger }.freeze
      @path = path
    end

    def migrate
      Sequel::Migrator.run(@db, @path)
    end
  end
end
