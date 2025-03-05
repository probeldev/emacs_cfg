;; терминал
(use-package vterm
  :ensure t
  :config
  (setq vterm-max-scrollback 10000))  ;; Увеличить буфер прокрутки

;; отключение номеров строк для vterm
(add-hook 'vterm-mode-hook
          (lambda ()
            (display-line-numbers-mode -1)))

;; fix hotkey for vterm
(evil-define-key 'normal vterm-mode-map "h" 'vterm-send-left)
(evil-define-key 'normal vterm-mode-map "l" 'vterm-send-right)
;; (evil-define-key 'normal vterm-mode-map "b" 'vterm-send-M-b)
(evil-define-key 'normal vterm-mode-map "e" 'vterm-send-M-f)
(evil-define-key 'normal vterm-mode-map "db" 'vterm-send-C-w)
(evil-define-key 'normal vterm-mode-map "de" 'vterm-send-M-d)
(evil-define-key 'normal vterm-mode-map "p" 'vterm-yank)
(evil-define-key 'normal vterm-mode-map "P" '(lambda ()
                                               (interactive)
                                               (vterm-send-C-b)
                                               (vterm-yank)))


