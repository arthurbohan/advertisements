class Advertisement < ApplicationRecord
  has_rich_text :body
  enum state: [:draft, :added, :canceled,
               :approved, :published, :archived]

  belongs_to :user
end
