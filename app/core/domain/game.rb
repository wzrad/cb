# frozen_string_literal: true
class Game < Entity
  # sessions
  has_many :sessions

  # setup
  def initial_state
    setup.call(self)
  end

  private

  def setup
    Pools::Setup
  end
end
