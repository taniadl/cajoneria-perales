class Cajon < ApplicationRecord
  def self.search(name)
    if name
     where('name LIKE ?', "%#{name}%")
    else
      all
    end
  end
end
