class Advertisement < ApplicationRecord
  enum state: [:draft, :created, :canceled,
               :approved, :published, :archived]

  belongs_to :user
end
