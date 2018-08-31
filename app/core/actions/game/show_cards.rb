# frozen_string_literal: true
class Game
  class ShowCard
    include StaticProxy
    private_reader :games

    def initialize(games = Game::Repo.new)
      @games = games
    end

    def call(card_id)
      game = games.current
      game&.cards&.find(card_id)
    end
  end
end
