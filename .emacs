(setq custom-file "~/.emacs.custom.el")

;;(add-to-list 'default-frame-alist `(font . "Iosevka-20"))

(add-to-list 'default-frame-alist '(font . "JetBrains Mono-18"))
(add-to-list 'default-frame-alist '(line-spacing . 0.2))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(global-display-line-numbers-mode)

(defun kill-all-buffers ()
  (interactive)
  (mapc #'kill-buffer (buffer-list)))
(global-set-key (kbd "C-c k") #'kill-all-buffers)
(define-key key-translation-map (kbd "M-$") "#")
(global-set-key (kbd "C-c d") #'duplicate-line)
(electric-pair-mode 1)

(load-file custom-file)
