require 'rails_helper'


RSpec.describe SponsoredPost, type: :model do
  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }
  let(:title) { RandomData.random_paragraph }
  let(:body) { RandomData.random_paragraph }
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: 99) }


  describe "attributes" do
    it "has title, body and price attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: 99)
    end
  end
end


=begin
  let(:sponsored_post) {SponsoredPost.create!}

  describe "attributes" do
    it "should response to" do
      expect(sponsored_post).to respond_to (:title)
    end

    it "should response to" do
      expect(sponsored_post).to respond_to (:body)
    end

    it "should response to" do
      expect(sponsored_post).to respond_to (:price)
    end
  end
=end
