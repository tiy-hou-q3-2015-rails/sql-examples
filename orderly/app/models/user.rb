class User < ActiveRecord::Base

  def name
    [last_name, first_name].join(", ")
  end
end
