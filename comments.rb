
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

# --- Liron Comments for improvement: --- 

# Users
.) Refactoring the query in users/show to rails convantion.

# occupied by
.) Refactoring :occupied_by in  all: view/controller/model and query in show page

# Request Status
.)Refactoring request_status
