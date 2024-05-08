class UsersController < ApplicationController
  def index
    matching_users = User.all
    
    @list_of_users = matching_users.order({ :username => :asc})
    render({ :template => "users_template/index"})
  end 

  def view
    #Parameters: ["path)"]
    url_username = params.fetch("path_username")
    
    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.at(0)


        render({ :template => "users_template/view"})  
    end 

    def create
      input_user = params.fetch("query_user")

      a_new_user = User.new
      a_new_user.username = input_user
      
      a_new_user.save
    
      redirect_to("/users/" + a_new_user.username)
  end 

  def update
    the_id = params.fetch("path_id")
  
    matching_users = User.where({ :id => the_id})
    
    the_user = matching_users.at(0)
  
    input_username = params.fetch("username")
    
    the_user.username = input_username
  
    the_user.save
  
    redirect_to("/user/" + the_user.username)
end
end
