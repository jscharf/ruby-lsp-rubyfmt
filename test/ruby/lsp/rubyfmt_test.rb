require "test_helper"

module RubyLsp
  module RubyLspRubyfmt
    class RubyfmtTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::Ruby::Lsp::Rubyfmt::VERSION
      end

      def test_basic_formatting
        doc = RubyLsp::RubyDocument.new(source: +<<~RUBY, version: 1, uri: URI::Generic.from_path(path: __FILE__))
        class Foo; def foo
        puts("Hello!")
        'singles' + "doubles"
           end
        end
        RUBY

        output = RubyLspRubyfmt::RubyFmtFormatterRunner.instance.run("", doc)

        assert_equal <<~RUBY, output
          class Foo
            def foo
              puts("Hello!")
              "singles" + "doubles"
            end
          end
        RUBY
      end
    end
  end
end
