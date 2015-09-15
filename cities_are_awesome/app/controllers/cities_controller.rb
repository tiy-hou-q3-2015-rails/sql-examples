class CitiesController < ApplicationController
  def list
    # @cities = all_cities
    @cities = City.all
  end

  def detail
    # @cities = all_cities
    # @city = @cities.find {|c| c.id == params[:id].to_i}

    @city = City.find_by name: params[:name]
    # @city = City.find params[:id]

    # @contact = Contact.find_by first_name: "Jesse", last_name: "Wolgamott"

  end

  def all_cities
    cities = []

    houston = City.new
    houston.id = 1
    houston.name = 'Houston'
    houston.state_id = 1
    houston.created_at = 3.weeks.ago
    houston.updated_at = 3.weeks.ago

    cities << houston

    austin = City.new
    austin.id = 2
    austin.name = 'Austin'
    austin.state_id = 1
    austin.created_at = 2.weeks.ago
    austin.updated_at = 2.weeks.ago

    cities << austin

    cities
  end
end
