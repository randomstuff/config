# ~/.atom/init.coffee

# Remove ".h" from C grammar (use C++ instead),
# see https://github.com/atom/atom/issues/4156
atom.grammars.onDidAddGrammar (grammar) ->
  if grammar.name is "C"
    grammar.fileTypes.splice(grammar.fileTypes.indexOf("h"), 1)
