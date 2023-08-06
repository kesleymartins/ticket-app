class Trade < ApplicationRecord
  has_enumeration_for :have, with: WeekDay
  has_enumeration_for :wanted, with: WeekDay
  has_enumeration_for :status, with: TradeStatus, create_helpers: true 

  validates :place, presence: true
  validates :have, presence: true
  validates :wanted, presence: true

  before_create :defaults

  private

  def defaults
    self.status = TradeStatus::OPEN
  end
end
