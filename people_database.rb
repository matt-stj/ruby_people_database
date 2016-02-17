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
