class Team < ActiveRecord::Base
  validates :name, :members, :leader, :contact_email, presence: true
  validates :members, numericality: { only_integer: true,
      less_than_or_equal_to: 16, greater_than_or_equal_to: 1,
      message: "must be a number between 1 and 16" }
  validates :name, :leader, length: { maximum: 80 }
  validates_format_of :contact_email, :with =>
      /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
