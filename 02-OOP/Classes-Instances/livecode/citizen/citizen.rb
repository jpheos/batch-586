class Citizen
  # Constructor
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    @age >= 18
  end

  def full_name
    "#{clean_name(@first_name)} #{clean_name(@last_name)}"
  end

  private

  def clean_name(name)
    name.capitalize
  end
end