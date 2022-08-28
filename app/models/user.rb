class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :phone, presence: true

  has_many :email_communications, as: :target, dependent: :destroy
  has_many :verification_codes, dependent: :destroy
  has_many :user_locations, dependent: :destroy
  has_many :locations, through: :user_locations
end
