module RubyLsp
  module RubyLspRubyfmt
    class Addon < RubyLsp::Addon
      def name
        "Ruby Fmt Formatter"
      end

      def activate
        # The first argument is an identifier users can pick to select this formatter. To use this formatter, users must
        # have rubyLsp.formatter configured to "rubyfmt"
        # The second argument is a singleton instance that implements the `FormatterRunner` interface (see below)
        RubyLsp::Requests::Formatting.register_formatter("rubyfmt", RubyFmtFormatterRunner.instance)
      end

      def deactivate
      end
    end

    # Custom formatting runner
    class RubyFmtFormatterRunner
      # Make it a singleton class
      include Singleton
      # If using Sorbet to develop the addon, then include this interface to make sure the class is properly implemented
      include RubyLsp::Requests::Support::FormatterRunner

      # Use the initialize method to perform any sort of ahead of time work. For example, reading configurations for your
      # formatter since they are unlikely to change between requests
      def initialize
      end

      # The main part of the interface is implementing the run method. It receives the URI and the document being formatted.
      # IMPORTANT: This method must return the formatted document source without mutating the original one in document
      def run(uri, document)
        `echo "#{document.source}" | rubyfmt`
      end
    end
  end
end
