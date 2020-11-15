
6) require_not_employer(function) change to redirect to job/id
8) in the job model 3 times relative to the user model(    
    has_many :users, through: :requests,
    has_many :users, dependent: :destroy
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
)and also in the user model have(
    has_many :jobs, through: :requests
    has_many :jobs, dependent: :destroy
)
1) maybe split the show controller (users) to indvidual methods

# VIEW
1) hamburger hedaer not working well , just after refresh (check the problem )
