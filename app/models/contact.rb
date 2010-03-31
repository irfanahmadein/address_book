class Contact < ActiveRecord::Base

  validates_presence_of :name

  def name
    [first_name, last_name].compact.join(" ")
  end
end
