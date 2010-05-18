class App
  module Views
    class Layout < Mustache
      def title 
        @title || "Disguise"
      end
    end
  end
end
