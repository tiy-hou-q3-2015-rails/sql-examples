class City < ActiveRecord::Base

  # attr_accessor :id, :name, :state_id, :created_at, :updated_at

  def state
    State.find(state_id)
  end
end
