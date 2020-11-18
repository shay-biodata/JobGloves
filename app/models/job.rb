class Job < ApplicationRecord
    

    has_many :requests, dependent: :destroy
    has_many :users, through: :requests

    has_many :users
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"

    belongs_to :position

    validates :title       ,presence:true, length: {minimum:4,maximum: 80}
    validates :description ,length: {minimum:25}
    validates :requirments ,length: {minimum:25}

    validates :available, inclusion: { in: [true, false] ,message: "Select Availability"}

end
