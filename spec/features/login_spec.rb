require 'rails_helper'


RSpec.describe "Logging in" do

  describe "visiting log in page" do

    it "shows a log in form" do

      visit '/users/sign_in'



      expect(page).to have_content('Log in')

    end
  end



end
