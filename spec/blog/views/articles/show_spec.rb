require_relative '../../../spec_helper'

module Blog::Views::Articles
  describe Show do
    let(:exposures) { Hash[article: Object.new, comments: [Object.new]] }
    let(:template)  { Lotus::View::Template.new('apps/blog/templates/articles/show.html.erb') }
    let(:view)      { Blog::Views::Articles::Show.new(template, exposures) }

    it 'exposes #article wrapped in a presenter' do
      assert_kind_of Blog::Presenters::ArticlePresenter, view.article, 'article should have been wrapped in a presenter'
    end

    it 'exposes #comments wrapped in presenters' do
      assert_kind_of Blog::Presenters::CommentPresenter, view.comments.first, 'comments should have been wrapped in a presenter'
    end

    it 'provides a comments heading' do
      assert_equal '1 comment', view.comments_header
    end
  end
end
