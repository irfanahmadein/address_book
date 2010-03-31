require 'spec_helper'

describe ContactsController do

  describe "GET index" do
    before(:each) do
      5.times { Factory(:contact) }
      get :index
    end
    it { should respond_with(:success) }
    it { should render_template(:index) }
    it { should assign_to(:contacts) }
    it "exposes the contacts" do
      assigns(:contacts).length.should == 5
    end
  end

  describe "GET new" do
    before(:each) do
      get :new
    end
    it { should respond_with(:success) }
    it { should render_template(:new) }
    it { should assign_to(:contact) }
  end

  describe "POST create" do
    before(:each) do
      contact = Factory.build(:contact)
      post :create, :contact => contact.attributes
    end
    it { should redirect_to(contacts_path) }
    it "creates the contact" do
      Contact.count.should == 1
    end
  end
    
end
