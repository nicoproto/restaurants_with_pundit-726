class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# class Booking < ApplicationRecord
#   before_create :set_total_price

#   def set_total_price
#     self.total_price = (self.end_date - self.start_date).to_i * self.flat.price
#   end

# end