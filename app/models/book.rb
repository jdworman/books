class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_one :format

  validates :format, presence: true
  validates :base_price,
    presence: { message: I18n.t('models.validations.blank_if_date_2_months') },
    if: Proc.new { |book| book.release_date > 2.months.ago }

end
