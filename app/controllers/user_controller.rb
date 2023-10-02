class UserController < ApplicationController
  def home
    render({:template => "user_page/home"})
  end

  def all_users
    render({:template => "user_page/all_users"})
  end

  def username
    name = params.fetch("user_name")
    @name = User.where({:username => name})[0]
    render({:template => "user_page/user_details"})
  end

end
