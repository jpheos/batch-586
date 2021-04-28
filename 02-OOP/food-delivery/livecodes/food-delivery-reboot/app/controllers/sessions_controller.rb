class SessionController
  def initialize
    @employee_repository
  end

  def sign_in
    # 1. ask for username
    username = ?
    # 2. ask for password
    password = ?
    # 3. find employee by username
    employee = @employee_repository.find_by_username(username)
    return employee if employee && employee.password == password

    @view.wrong_credentials
    sign_in
    # 4. est ce que j'ai un employee avec le username 
    # 4. checker si password entré == password employee
  end
end