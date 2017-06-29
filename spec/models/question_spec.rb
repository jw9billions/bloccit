require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: false)}
  describe "attributes" do
    it "should have attributes title and body" do
      expect(question).to have_attributes(title: "New Question Title", body: "New Question Body")
    end

    it "should respond to resolved" do
      expect(question).to respond_to(:resolved)
    end
  end
end
