class Search < ApplicationRecord
  belongs_to :user, polymorphic: true
  belongs_to :exercise
end