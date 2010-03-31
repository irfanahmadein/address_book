class Contact < ActiveRecord::Base

  validates_presence_of :name, :message => "You must specify either the first name, last name or both"

  def name
    [first_name, last_name].compact.join(" ")
  end
end
