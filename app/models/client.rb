class Client < ActiveRecord::Base
  belongs_to :user

  def self.search(name)
    if name
     where('name LIKE ?', "%#{first_name}%")
    else
      all
    end
  end
end
