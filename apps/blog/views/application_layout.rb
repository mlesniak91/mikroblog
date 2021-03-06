module Blog
  module Views
    class ApplicationLayout
      include Blog::Layout

      def each_flash
        %i(alert notice).each do |type|
          message = @scope.locals[:flash][type]
          yield type, message if message
        end
      end
    end
  end
end
