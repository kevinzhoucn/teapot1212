require "rails_helper"

RSpec.describe Notifier, :type => :mailer do
  describe "resume_received" do
    let(:mail) { Notifier.resume_received }

    it "renders the headers" do
      expect(mail.subject).to eq("Resume received")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
