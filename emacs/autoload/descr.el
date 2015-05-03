; Describe the character at point in the mode line.

; TODO:
; * make this a mode instead
; * do not depend on column-number-mode

(column-number-mode t)
(defun char-short-name (x)
  (if (characterp x)
      (format
       "U+%04x:%s "
       x
       (cond
	;; Direct display
					;((and (> x 32) (< x 126)) (char-to-string x))
	;; ASCII Control
	((< x 32)
	 (cond ((= x 0) "NUL \\0")
	       ((= x 1) "SOH")
	       ((= x 2) "STX")
	       ((= x 3) "ETX")
	       ((= x 4) "EOT")
	       ((= x 5) "ENQ")
	       ((= x 6) "ACK")
	       ((= x 7) "BEL")
	       ((= x 8) "BS")
	       ((= x 9) "HT \\t")
	       ((= x 10) "LF \\n")
	       ((= x 11) "VT")
	       ((= x 12) "FF")
	       ((= x 13) "CR \\r")
	       ((= x 14) "SO")
	       ((= x 15) "SI")
	       ((= x 16) "DLE")
	       ((= x 17) "DC1")
	       ((= x 18) "DC2")
	       ((= x 19) "DC3")
	       ((= x 20) "DC4")
	       ((= x 21) "NAK")
	       ((= x 22) "SYN")
	       ((= x 23) "ETB")
	       ((= x 24) "CAN")
	       ((= x 25) "EM")
	       ((= x 26) "SUB")
	       ((= x 27) "ESC")
	       ((= x 28) "FS")
	       ((= x 29) "GS")
	       ((= x 30) "RS")
	       ((= x 31) "US")
	       ))
	((= x 127) "DEL")
	(t (get-char-code-property x 'name))
	)
       )
    ""
    )
  )
(add-to-list 'global-mode-string
	     '(:eval (char-short-name (char-after)))
	     t)
