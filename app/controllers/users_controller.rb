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
  end 
