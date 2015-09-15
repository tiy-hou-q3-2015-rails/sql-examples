class StatesController < ApplicationController
  def list
    @states = State.all
  end

  def detail
    @state = State.find_by abbreviation: params[:abbreviation]

    # select * from cities where state_id = @state.id

    # @cities = City.where state_id: @state.id
  end
end
