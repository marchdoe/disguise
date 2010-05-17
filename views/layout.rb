class App
  module Views
    class Layout < Mustache
      def title 
        @title || "Toupee || A simple flexible visual framework."
      end
    end
  end
end
