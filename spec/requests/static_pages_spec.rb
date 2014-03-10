require 'spec_helper'

describe "StaticPages" do

  subject{ page } 

  describe "Home page" do
	  before { visit root_path }

	  it { should have_content('Sample App') } 
	  it { should have_title(full_title('')) }
	  it { should_not have_title(' | Home') }
    end

  describe "Help page" do
	  before { visit help_path }

	  it { should have_content('Help') } 
	  it { should have_title(full_title('Help'))} 
    end

  describe "About page" do
	  before { visit about_path }

	  it { should have_content('About') }
	  it { should have_title(full_title('About Us')) }
    end
  
  describe "Content page" do
	  before { visit content_path }

	  it { should have_content('Content') }
	  it { should have_title(full_title('Content')) }
    end
end
