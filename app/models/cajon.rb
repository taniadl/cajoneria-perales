class Cajon < ApplicationRecord
  belongs_to :calcu

  def self.search(first_name)
    if first_name
     where('name LIKE ?', "%#{first_name}%")
    else
      all
    end
  end
end
