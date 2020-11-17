
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

# Liron Comments for improvement: 
.) Change the query in users/show to rails convantion.
.) Refactoring :occupied_by in  all: view/controller/model and query in show page
.) when update the job , the occupied by change to nill auto when click update
.) fix the conditions in jobs controller #update (objective_1: when click on available=true shpwld remove the occupied id. objective_2: when click on occupide_uder= "rony" change the available to false )
.)request status: complite the (change status(by the employer(a,d,p)),add into the view and add methode for that)
