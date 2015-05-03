# I'm paranoid:
umask 077

# If running bash:
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Path
for d in "$HOME/bin" "$HOME/.bin" "$HOME/.cabal/bin" "$HOME/.gems/bin"; do
    if [ -d "$d" ] ; then
        PATH="$d:${PATH}"
    fi
done

# Editor:
export EDITOR=emacsclient
export ALTERNATE_EDITOR=""

# Make SWING not horrible:
if [ "$DISPLAY" != "" ]; then
  export _JAVA_OPTIONS
  _JAVA_OPTIONS="-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.systemlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.aatext=true -Dawt.useSystemAAFontSettings=on"
fi
