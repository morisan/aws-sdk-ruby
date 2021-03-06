require 'ox'
require 'stringio'

module Aws
  module Xml
    class Parser
      class OxEngine

        def initialize(stack)
          @stack = stack
        end

        def parse(xml)
          Ox.sax_parse(@stack, StringIO.new(xml))
        end

      end
    end
  end
end
