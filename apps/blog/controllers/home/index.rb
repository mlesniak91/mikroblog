module Blog::Controllers::Home
  class Index
    include Blog::Action

    expose :articles

    def initialize(repository: Demo::ArticleRepository)
      @repository = repository
    end

    def call(params)
      @articles = @repository.all
    end
  end
end
