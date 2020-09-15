class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          has_many :chores
          has_many :expenses, through: :expense_shares
          belongs_to :home, optional: true
end
