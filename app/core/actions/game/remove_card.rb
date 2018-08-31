# frozen_string_literal: true
class Game
  class RemoveCard
    include StaticProxy
    private_reader :games

    def initialize(games = Game::Repo.new)
      @games = games
    end

    def call(card_id)
      game = games.current
      card = game.remove_card(card_id)
      card.destroy
      card
    end
  end
end
