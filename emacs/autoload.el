; ~/.emacs.d/autoload.el
; Load all ~/.emacs.d/autoload/*.el files:
; Usage: source my with (load "~/.emacs.d/autoload.el") in emacs.el.

(if (file-directory-p "~/.emacs.d/autoload/")
    (dolist (file (directory-files "~/.emacs.d/autoload/" t "\.el$"))
      (load file)
      )
  )
