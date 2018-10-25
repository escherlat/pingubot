require 'bundler/setup'
require 'mongoid'
require 'discordrb'
require 'json'

module Bot
  Mongoid.logger.level = Logger::DEBUG
  Mongo::Logger.logger.level = Logger::DEBUG
  Mongoid.load!('config/mongoid.yml', :development)

  BOT = Discordrb::Commands::CommandBot.new token: ENV['token'], client_id: ENV['app_id'], prefix: ENV['prefix']

  module Fish; end
  Dir['fish/*.rb'].each { |fish| load fish }
  Fish.constants.each do |fish|
    BOT.include! Fish.const_get fish
  end

  BOT.command(:reload, help_available: false) do |event|
    break unless event.user.id == ENV['owner_id']
    Dir['fish/*.rb'].each { |fish| load fish }
    Fish.constants.each do |fish|
      BOT.include! Fish.const_get fish
    end
  end

  BOT.command(:ping, description: "measure this bot's response time") do |event|
    m = event.respond('Pong!')
    m.edit "Pong! Time taken: #{Time.now - event.timestamp} seconds."
    nil
  end

  BOT.command(:exit, help_available: false) do |event|
    break unless event.user.id == ENV['owner_id'] # Replace number with your ID

    BOT.send_message(event.channel.id, 'Shutting down.')
    exit
  end

  BOT.command(:grantpermission, help_available: false) do |event, *args|
    break unless event.user.id == ENV['owner_id']
    BOT.set_role_permission(id, args[0])
    event.respond('Done.')
    nil
  end

  BOT.run
end
