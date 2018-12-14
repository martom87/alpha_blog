require 'test_helper'
class ArticleTest < ActiveSupport::TestCase

  test 'is valid article' do
    article = Article.new(title: 'some title', description: 'some description')
    assert article.valid?
  end


    RSpec.describe Article, :type => :model do
      it "is valid with valid attributes" do
        expect(Article.new).to be_valid
      end
      it "the article is not valid without of the title"
    end


end


class Auction < ActiveRecord::Base
  validates_presence_of :title
end