module Motion
  class OAuth2
    class << self
      def debug=(bool)
        BubbleWrap.debug = bool
      end

      def debug!
        BubbleWrap.debug = true
      end

      def debug?
        BubbleWrap.debug?
      end
    end
  end
end