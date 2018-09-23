class Client < ActiveRecord::Base
  has_one :shoppingcarts
  belongs_to :user

  def self.search(name)
    if name
     where('name LIKE ?', "%#{first_name}%")
    else
      all
    end
  end
end
