# frozen_string_literal: true

require 'wanderung/version'
require 'wanderung/database'

require 'sequel'

##
# Allows you to create multiple database schemas
class Wanderung
  def initialize(database_configs)
    @database_configs = database_configs.is_a?(Hash) ? [database_configs] : database_configs
  end

  def run
    databases.map(&:migrate)
  end

  attr_writer :logger

  private

  def databases
    @databases ||= @database_configs.map do |database_config|
      path = database_config.fetch(:path, database_config.fetch(:database))
      Database.new(
        path: [Dir.pwd, path].join('/'),
        connection_uri: database_config.fetch(:connection_uri),
        logger: @logger
      )
    end
  end
end
