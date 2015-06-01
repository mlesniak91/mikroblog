module Blog::Views::Home
  class Index
    include Blog::View

    def articles
      locals[:articles].map do |article|
        Blog::Presenters::ArticlePresenter.new(article)
      end
    end
  end
end
