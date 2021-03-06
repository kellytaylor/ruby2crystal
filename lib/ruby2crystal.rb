require 'parser/current'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'ruby2crystal/converter'

module Ruby2Crystal

  def self.process(source)
    parsed_syntax_tree = parse(source)
    crystal = Ruby2Crystal::Converter.new(parsed_syntax_tree).convert
  end

  def self.parse(source)
    Parser::CurrentRuby.parse(source)
  end

  def self.to_ast(source)
    parsed_syntax_tree = parse(source)
  end
end