class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: :category_list_inclusion }
  # attribute :category, Array

  private

  def category_list_inclusion
    ['chinese', 'italian', 'japanese', 'french', 'belgian']
  end
end
