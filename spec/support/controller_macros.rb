module ControllerMacros
  def login_user
    before(:each) do
      @request.env['Devise.mapping'] = Devise.mappings[:user]
      @user.create(
          email: 'test@test.com',
          password: 'Password',
          first_name: 'Test',
          last_name: 'Tester',
          age: 27)
      sign_in @user
    end
  end
end
