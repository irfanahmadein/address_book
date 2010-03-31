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
    it "should expose the contacts" do
      assigns(:contacts).length.should == 5
    end
  end
    
end
