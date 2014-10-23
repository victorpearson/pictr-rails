require "features/helper"

describe "User Account Spec" do
  describe "Creating an Account" do
    it "persists the user in the database" do
      visit root_path
      click_link_or_button "create_account"


        fill_in "user_email", with: "skizz@skizz.com"
        fill_in "user_password", with: "password"
        fill_in "user_password_confirmation", with: "password"

        click_link_or_button "sign up"
      end

      expect(page).to have_content("Account created for skizz@skizz.com")
      expect(User.exists?(email_address:"skizz@skizz.com")).to be_truthy
      expect(current_path).to eq(root_path)
    end
  end
end
