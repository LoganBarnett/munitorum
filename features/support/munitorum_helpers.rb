module MunitorumHelpers
  def login
    User.create :email => 'logustus@gmail.com', :password => 'Password1', :password_confimation => 'Password1'
    visit root_path
    click_link 'Login'
    fill_in 'user_email', :with => 'logustus@gmail.com'
    fill_in 'user_password', :with => 'Password1'
    click_button 'Sign in'
  end
end

World(MunitorumHelpers)