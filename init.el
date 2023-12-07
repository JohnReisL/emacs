;; ;; В файл .emacs вставить (load-file "~/.emacs.d/init.el")

;; (package-initialize)

(load-theme 'tango-dark)
(tool-bar-mode 0)
(menu-bar-mode 0)
(windmove-default-keybindings 'meta)
(show-paren-mode 1)

;;Убирает Welcome экран
(setq inhibit-startup-screen t) 
;; Текст, который выводится в качестве начального экрана
(setq initial-scratch-message "Анекдот\nпро наташу ростову")

(add-hook 'c-mode-common-hook
    (lambda()
        (local-set-key (kbd "C-c <right>") 'hs-show-block)
        (local-set-key (kbd "C-c <left>")  'hs-hide-block)
        (local-set-key (kbd "C-c <up>")    'hs-hide-all)
    (local-set-key (kbd "C-c <down>")  'hs-show-all)
(hs-minor-mode t)))

(setq auto-mode-alist
      (append (list (cons "\\.cc$"   'c++-mode)
                    (cons "\\.cpp$"  'c++-mode)
                    (cons "\\.cxx$"  'c++-mode)
                    (cons "\\.h$"    'c++-mode)
                    (cons "\\.il$"   'lisp-mode)
                    (cons "\\.l$"    'c++-mode)
                    (cons "makefile.inc"  'makefile-gmake-mode))
              auto-mode-alist))

(require 'desktop)
(desktop-save-mode 1)
(setq desktop-path (list "."))
