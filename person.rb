class Person
  attr_reader :first_name, :last_name, :email, :state

  def initialize(params = {})
    @first_name = params.fetch(:first_name, nil)
    @last_name = params.fetch(:last_name, nil)
    @email = params.fetch(:email, nil)
    @state = params.fetch(:state, nil)
  end

end
