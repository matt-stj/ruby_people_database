require 'pry'
require_relative './person'

class PeopleDatabase
  attr_reader :people

  def initialize
    @people = []
  end

  def add(options)
    person = Person.new(options)
    @people << person
  end

  def remove(email)
    @people.delete_if { |person| email == person.email }
  end

  def email_csv
    @people.map { |person| person.email }.join(", ")
  end

  def from_state(state)
    @people.select { |person| state == person.state }
  end

  def total_from_state(state)
    from_state(state).count
  end

end

p = PeopleDatabase.new
p.add(first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO")
p.add(first_name: "hi", last_name: "Griffin", email: "teasdss@turing.io", state: "CO")
p.add(first_name: "there", last_name: "Griffin", email: "tess@asdturing.io", state: "AZ")

p.email_csv
