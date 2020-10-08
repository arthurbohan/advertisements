class Advertisement < ApplicationRecord
  enum state: [:draft, :added, :canceled,
               :approved, :published, :archived]

  belongs_to :user
end
