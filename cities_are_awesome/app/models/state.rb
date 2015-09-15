class State < ActiveRecord::Base

  def cities
    City.where state_id: id
  end
end
