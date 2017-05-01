class Player
  attr_accessor :id, :first_name, :last_name, :average, :salary, :phone_number

  def initialize(input_options)
    @id = input_options['id']
    @first_name = input_options['first_name']
    @last_name = input_options['last_name']
    @average = input_options['average']
    @salary = input_options['salary']
    @phone_number = input_options['phone_number']
  end

  def self.find(the_id)
    player_hash = Unirest.get("#{ENV['API_Route']}/players/#{the_id}").body
    @player = Player.new(player_hash)
  end

  def all
    all_players = Unirest.get("#{ENV['API_Route']}/players").body
    players_objects = []
  end
end

