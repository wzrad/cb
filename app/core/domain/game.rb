# frozen_string_literal: true
class Game < Entity
  # sessions
  has_many :sessions

  # setup
  def initial_state
    setup.call(self)
  end

  # card
  has_many :cards

  def add_card(params)
    cards.build(params)
    self
  end

  private

  def setup
    Pools::Setup
  end
end
