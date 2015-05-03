# ~/.atom/init.coffee

# Set Makefile[.any extension] and '.mk' files to always use hard tabs
# https://github.com/atom/language-make/issues/3
atom.workspaceView.eachEditorView (editorView) ->
  editor = editorView.getEditor()
  if path.basename(editor.getPath()) is 'Makefile'
    editor.setSoftTabs(false)
  if path.extname(editor.getPath()) is '.mk'
    editor.setSoftTabs(false)
