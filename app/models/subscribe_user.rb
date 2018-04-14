class SubscribeUser < ApplicationRecord
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => EMAIL_REGEX, :on => :create

  scope :active, -> { where(status: 'A') }

  has_many :page_stats, as: :page_stateable
end
