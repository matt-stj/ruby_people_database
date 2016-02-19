require 'minitest'
require 'minitest/autorun'
require_relative 'people_database'


class PeopleDatabaseTest < Minitest::Test

  def test_it_adds_a_person_when_added_to_database
    pd = PeopleDatabase.new
    pd.add({first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", stat: "CO"})
    assert_equal 1, pd.people.count
  end

end
