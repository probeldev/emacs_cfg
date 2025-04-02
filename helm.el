;; -*- lexical-binding: t -*-
;; Конфигурация Helm: мощный поиск и навигация в Emacs

(use-package helm
  :ensure t
  :demand t  ; Загружать сразу при старте
  :bind (
    ("M-x"     . helm-M-x)            ; Улучшенный M-x
    ("C-x C-f" . helm-find-files)     ; Поиск файлов
    ("C-x b"   . helm-buffers-list)   ; Список буферов
    ("C-x r b" . helm-bookmarks)      ; Закладки
    ("C-c h o" . helm-occur)          ; Поиск в буфере
    ("C-c h l" . helm-locate)         ; Поиск в системе (locate)
    :map helm-map
    ("TAB"     . helm-execute-persistent-action) ; TAB для действий
    ("C-i"     . helm-execute-persistent-action) ; Альтернатива TAB
    ("C-z"     . helm-select-action)  ; Выбор действия
  )
  :custom
  (helm-ff-auto-update-initial-value t) ; Автообновление при поиске файлов
  (helm-split-window-inside-p t)       ; Превью в текущем окне
  (helm-move-to-line-cycle-in-source t) ; Циклическая навигация
  (helm-ff-search-library-in-sexp t)    ; Поиск в библиотеках
  (helm-ff-file-name-history-use-recentf t) ; История из recentf
  (helm-buffers-fuzzy-matching t)      ; Нечеткий поиск в буферах
  (helm-recentf-fuzzy-match t)         ; Нечеткий поиск в recentf
  (helm-autoresize-mode t)             ; Автоматический размер окна
  :config
  (helm-mode 1)  ; Включить Helm глобально
  (helm-autoresize-mode 1)
  (setq helm-display-header-line nil) ; Скрыть заголовок (опционально)

  ;; Дополнительные источники для Helm
  (add-to-list 'helm-sources 'helm-source-recentf)
  (add-to-list 'helm-sources 'helm-source-bookmarks)
)

;; Helm Projectile (для работы с проектами)
(use-package helm-projectile
  :ensure t
  :after (helm projectile)
  :bind ("C-c p" . helm-projectile)
  :config
  (helm-projectile-on)
  (setq projectile-completion-system 'helm)
  (setq projectile-switch-project-action 'helm-projectile)
)

;; Helm-ag (поиск через ag/silver searcher)
(use-package helm-ag
  :ensure t
  :after helm
  :custom
  (helm-ag-base-command "ag --nocolor --nogroup")
  (helm-ag-insert-at-point 'symbol)
  :bind ("C-c h a" . helm-ag)
)

;; Иконки для Helm (требует all-the-icons)
(use-package helm-icons
  :ensure t
  :after helm
  :config
  (helm-icons-enable)
)

; ;; Дополнительные действия для файлов
; (add-to-list 'helm-ff-actions
;              '("Открыть в терминале" . (lambda (file)
;                 (let ((default-directory (file-name-directory file)))
;                 (ansi-term "/bin/bash")))
;              t))
;
;; Интеграция с Magit (если используется)
(use-package helm-magit
  :ensure t
  :after (helm magit)
)


;; Улучшенный grep через Helm
(use-package helm-grep
  :after helm
  :bind ("C-c h g" . helm-grep-do-git-grep)
)

;; Отключить ненужные источники (опционально)
(setq helm-sources-using-default-as-input '(helm-source-buffers-list
                                           helm-source-recentf
                                           helm-source-bookmarks
                                           helm-source-file-cache))

;; Сообщение о загрузке
(message "Helm configuration loaded!")
