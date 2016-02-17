require 'minitest/autorun'
require 'minitest/pride'
require_relative 'people_database'
​
class PeopleDatabaseTest < Minitest::Test

  def setup
    pd = PeopleDatabase.new
  end
​
  def test_it_adds_a_person_when_added_to_database
    pd.add({first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO"})
    assert_equal 1, pd.count
  end

  def test_it_removes_a_person
    pd.add({first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO"})
    assert_equal 1, pd.count
    asssert_equal "Tess", pd.first.first_name
    pd.remove("tess@turing.io")
    assert_equal 0, pd.count
  end
​
end
