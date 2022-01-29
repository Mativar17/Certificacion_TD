class Lead < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, presence: true
  validates_presence_of :last_name, presence: true
  validates_presence_of :email, presence: true, uniqueness: true
  validates_presence_of :phone_number, presence: true, uniqueness: true
  validates_presence_of :status, presence: true
  validates_presence_of :entered_by, presence: true
  validates_presence_of :entry_date, presence: true

  before_save :format_name

  has_many :clients
  has_many :interesteds
  has_many :prospects

  def format_name
    self.name = self.name.upcase
    self.last_name = self.last_name.upcase
  end

  def to_s
    "#{last_name}, #{name}"
  end
  
end
