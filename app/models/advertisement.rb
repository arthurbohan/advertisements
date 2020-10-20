class Advertisement < ApplicationRecord
  validates :title, presence: true, length: { maximum: 256 }
  has_rich_text :body
  enum state: [:draft, :added, :canceled,
               :approved, :published, :archived]

  belongs_to :user
  paginates_per 5
end
