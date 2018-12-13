require 'test_helper'
class ArticleTest < ActiveSupport::TestCase

  test 'is valid article' do
    article = Article.new(title: 'some title', description: 'some description')
    assert article.valid?
  end

end