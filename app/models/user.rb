class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clients
  def self.search(first_name)
    if first_name
     where('first_name LIKE ?', "%#{first_name}%")
    else
      all
    end
  end

end
