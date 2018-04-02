class Streak < ApplicationRecord
  belongs_to :user
  has_many  :chains, :dependent => :delete_all
  validates :title, presence: true
  validates :aim, presence: true
end