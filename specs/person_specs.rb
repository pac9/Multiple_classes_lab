require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("David", 45)
  end

  def test_name
    assert_equal("David", @person.name)
  end

  def test_age
    assert_equal(45, @person.age)
  end



end
