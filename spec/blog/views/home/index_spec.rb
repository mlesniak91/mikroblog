require_relative '../../../spec_helper'

module Blog::Views::Home
  describe Index do
    let(:exposures) { Hash[articles: [Object.new]] }
    let(:template)  { Lotus::View::Template.new('apps/blog/templates/home/index.html.erb') }
    let(:view)      { Blog::Views::Home::Index.new(template, exposures) }

    it 'exposes #articles with presenter applied' do
      assert_kind_of Blog::Presenters::ArticlePresenter, view.articles.first, 'articles should have been wrapped in presenters'
    end
  end
end
