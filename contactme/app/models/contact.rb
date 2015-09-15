class Contact < ActiveRecord::Base

  def company
    Company.find company_id
  end
end
