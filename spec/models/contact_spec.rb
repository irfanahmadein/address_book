require 'spec_helper'

describe Contact do
  subject { Factory(:contact) }

  it "requires either a first name, last name or both" do
    contact = Factory.build(:contact, :first_name => nil, :last_name => nil)
    contact.should_not be_valid
  end

  context "name" do
    it "is the concatenation of the first and last name" do
      subject.name.should eql("#{subject.first_name} #{subject.last_name}")
    end
    it "has the correct value if I only set the first name" do
      contact = Factory(:contact, :last_name => nil)
      contact.name.should eql(contact.first_name)
    end
  end
end
