require 'ruble'

command 'Swap Case' do |cmd|
  #cmd.key_binding = 'SHIFT+CTRL+A' # uncomment for a key binding
  cmd.scope = 'source'
  cmd.output = :replace_selection
  cmd.input = :selection, :word
  cmd.invoke do |context|
    word = $stdin.gets
    context.exit_discard if word.nil? # exit if the selection is null
    print word.swapcase
  end
end
require 'ruble'

command 'Meee' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.key_binding = 'CONTROL+SHIFT+E'
  cmd.scope = 'source.ruby'
  cmd.invoke do |context|
    # Write your ruby code here. If there's a non-nil return value for the block that will be used as output/result value.
    # Otherwise we'll take what was piped to STDOUT
    nil
  end
end

command 'About the author' do |cmd|
  #cmd.key_binding = 'SHIFT+CTRL+A' # uncomment for a key binding
  cmd.scope = 'source'
  cmd.output = :replace_selection
  cmd.input = :selection, :word
  cmd.invoke do |context|
    word = $stdin.gets
    context.exit_discard if word.nil? # exit if the selection is null
    print word.swapcase
  end
end

# Use Commands > Bundle Development > Insert Bundle Section > Command
# to easily add new commands