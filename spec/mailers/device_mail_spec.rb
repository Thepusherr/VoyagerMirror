require "rails_helper"
 
RSpec.describe Notifications, type: :mailer do
  describe "notify" do
    let(:mail) { Announcements.account_renewal }
 
    it "prepares the email headers properly" do
      expect(mail.subject).to eq("Renewal")
      expect(mail.to).to eq(["company@example.org"])
      expect(mail.from).to eq(["bot@example.com"])
    end
 
    it "renders the body" do
      expect(mail.body.encoded).to match("A customer has renewed their account.")
    end
  end
end