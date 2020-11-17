class Request < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :jobs
  belongs_to :request_status
end
