class Subscription < ApplicationRecord
  belongs_to :user, polymorphic: true
  belongs_to :request_for_comment
end
