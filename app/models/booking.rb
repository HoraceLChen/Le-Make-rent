class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  before_create :set_default_status

  private

  def set_default_status
    self.status = "pending"
  end
end
