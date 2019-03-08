namespace :populate do
  desc "TODO"
  task games: :environment do
    namespace :populate do
      desc "Populate Games"
      task games: :environment do
        20.times do
          game = Game.create(name: Faker::Movies::StarWars.planet, description: Faker::Movies::StarWars.quote)
          6.times { Character.create(name: Faker::Games::Pokemon.name, power: Faker::Games::Pokemon.move, game_id: game.id) }
        end
      end
    end
  end

end
