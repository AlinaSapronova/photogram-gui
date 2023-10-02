class UserController < AplicationController
  def home
    render({:template => "user_page/home"})
  end

end
