require 'spec_helper'

describe "Home page" do

  	it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => 'World Farm')
  	end

end

describe "User pages" do
	subject { page }
	describe "signup page" do
		before {visit signup_path }

		it {should have_selector('h1', text: 'Sign up')}
		it {should have_selector('title', text: 'Sign up')}
	end
end

