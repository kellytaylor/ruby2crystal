require 'ruby2crystal/converter/array'
module Ruby2Crystal
  class Converter
    def initialize(abstract_syntax_tree)
      @AST = abstract_syntax_tree
    end
    def convert
      return unless @AST
      # Grab the type of syntax tree
      syntax_type = @AST.type
      # Call the method for that specific syntax. e.g. :hash would be on_hash
      send("on_#{syntax_type}", @AST.children)
    end
  end
end