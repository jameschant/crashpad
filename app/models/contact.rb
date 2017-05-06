class Contact < ActiveRecord::Base
  # Contact Form validations
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :uni, presence: true
  validates :groupsize, presence: true
  validates :comments, presence: true
end