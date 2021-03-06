# Configure your routes here
# See: http://www.rubydoc.info/gems/lotus-router/#Usage
#
#
#
# This route will look for `Blog::Controllers::Home::Index` action in `apps/blog/controllers/home/index.rb`.
# Please, uncomment the following line to have a working example.
get '/', to: 'home#index', as: 'root'
get '/articles/:id', to: 'articles#show', as: 'article'
post '/articles/:article_id/comments', to: 'comments#create', as: 'article_comments'
