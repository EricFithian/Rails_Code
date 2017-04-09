json.array! @players do |player|
  json.partial! 'player.json.jbuilder', player: player
end
  