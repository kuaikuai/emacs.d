;; @see https://bitbucket.org/lyro/evil/issue/360/possible-evil-search-symbol-forward
;; evil 1.0.8 search word instead of symbol
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/evil/lib")
(require 'clojure-mode)
(require 'cider)
(require 'ac-nrepl)
;;(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "<em>nrepl</em>")
(add-hook 'clojure-mode-hook 'paredit-mode)

(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

(provide 'init-clojure)
