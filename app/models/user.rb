class User < ActiveRecord::Base
  has_many :clients
  def self.search(first_name)
    if first_name
     where('first_name LIKE ?', "%#{first_name}%")
    else
      all
    end
  end

end
