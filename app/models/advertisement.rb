class Advertisement < ApplicationRecord
  validates :name, presence: true, length: { maximum: 256 }
  has_rich_text :body
  enum state: { draft: 0, added: 1, canceled: 2, approved: 3, published: 4, archived: 5 }

  belongs_to :user
  paginates_per 5
end
