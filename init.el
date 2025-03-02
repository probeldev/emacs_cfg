;; Установка темы
;; (load-theme 'deeper-blue t)
;; (load-theme 'adwaita t)
;; (load-theme 'leuven-dark t)
(load-theme 'leuven t)


;; пакетный менеджер
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; vim mode
(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; скрытие toolbar, menu, statusline
(tool-bar-mode -1)
(setq mode-line-format nil)
(menu-bar-mode -1)

;; Отключение скроллбара
(scroll-bar-mode -1)

;; Включение подсветки текущей строки
(global-hl-line-mode 1)
(set-face-background 'hl-line "#eeeeee")  ;; Темно-синий фон

;; Установка размера Tab (в пробелах)
(setq-default tab-width 4) ; Размер Tab для всех буферов

;; Отключение символов Tab (использование пробелов)
(setq-default indent-tabs-mode nil) ; Использовать пробелы вместо Tab

;; Включение whitespace-mode
(require 'whitespace)
; (global-whitespace-mode 1)

;; Настройка отображения Tab
(setq whitespace-style '(face tabs tab-mark))
;; (setq whitespace-display-mappings
;;      '((tab-mark ?\t [?\u00BB ?\t]))) ; Отображение Tab как символа »

;; Настройка шрифта для Tab
(set-face-attribute 'default nil :height 100) ; Размер шрифта (в процентах)

;; отключеие временных файлов
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Установка шрифта Fira Code
;; (set-frame-font "Fira Code-11" nil t) ; 12 — размер шрифта, измените на нужный
;; Установка FiraCode Nerd Font
(set-frame-font "FiraCode Nerd Font Mono-12" nil t)  ;; Размер шрифта 12

;; Установка ligature (если ещё не установлен)
(unless (package-installed-p 'ligature)
  (package-refresh-contents)
  (package-install 'ligature))

;; Включение поддержки лигатур
(require 'ligature)
(ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "||=" "||>"
                                     ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/="
                                     "!==" "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->"
                                     "---" "-<<" "<--" "<---" "<->>" "<+>" "</>" "###" "#_("
                                     "..<" "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~"
                                     "~@" "~=" "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|="
                                     "|>" "|-" "{|" "[|" "]#" "::" ":=" ":>" ":<" "$>" "=="
                                     "=>" "!=" "!!" ">=" ">>" "<=" "<>" "<|" "<$" "<*" "<+"
                                     "</" "#{" "#[" "#:" "#=" "#!" "##" "#(" "#?" "#_" "%%"
                                     ".=" ".-" ".." ".?" "+>" "++" "?:" "?=" "?." "??" ";;"
                                     "/*" "/=" "/>" "//" "__" "~~" "(*" "*)" "\\\\" "://"))
(global-ligature-mode 1)

;; Включение отображения номеров строк
(global-display-line-numbers-mode 1)

;; Отключение номеров строк в определённых режимах
(add-hook 'dired-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))


;; Установка all-the-icons для иконок
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))
;; Установка ligature (если ещё не установлен)
(unless (package-installed-p 'ligature)
  (package-refresh-contents)
  (package-install 'ligature))

;; Включение поддержки лигатур
(require 'ligature)
(ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "||=" "||>"
                                     ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/="
                                     "!==" "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->"
                                     "---" "-<<" "<--" "<---" "<->>" "<+>" "</>" "###" "#_("
                                     "..<" "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~"
                                     "~@" "~=" "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|="
                                     "|>" "|-" "{|" "[|" "]#" "::" ":=" ":>" ":<" "$>" "=="
                                     "=>" "!=" "!!" ">=" ">>" "<=" "<>" "<|" "<$" "<*" "<+"
                                     "</" "#{" "#[" "#:" "#=" "#!" "##" "#(" "#?" "#_" "%%"
                                     ".=" ".-" ".." ".?" "+>" "++" "?:" "?=" "?." "??" ";;"
                                     "/*" "/=" "/>" "//" "__" "~~" "(*" "*)" "\\\\" "://"))
(global-ligature-mode 1)

;; Включение отображения номеров строк
(global-display-line-numbers-mode 1)

;; Отключение номеров строк в определённых режимах
(add-hook 'dired-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))

;; Установка all-the-icons
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

;; Установка minions
(use-package minions
  :ensure t
  :config
  (minions-mode 1)
  :custom
  (minions-mode-line-lighter "⚙")
  (minions-direct '(flycheck-mode)))

;; Проверка и установка ivy и counsel
(unless (package-installed-p 'ivy)
  (package-refresh-contents)
  (package-install 'ivy))

(unless (package-installed-p 'counsel)
  (package-refresh-contents)
  (package-install 'counsel))
;; Включение ivy-mode
(ivy-mode 1)

;; Настройка ivy
(setq ivy-use-virtual-buffers t) ; Показывать недавние файлы в списке буферов
(setq enable-recursive-minibuffers t) ; Разрешить рекурсивные мини-буферы
(setq ivy-count-format "(%d/%d) ") ; Формат отображения количества результатов

;; Установка treemacs (если ещё не установлен)
(unless (package-installed-p 'treemacs)
  (package-refresh-contents)
  (package-install 'treemacs))

;; Включение treemacs
(require 'treemacs)
;;(treemacs-mode 1)
(treemacs-project-follow-mode 1)

;; Горячая клавиша для открытия/закрытия treemacs
(global-set-key (kbd "C-c tt") 'treemacs)


;; LSP для GO 
(unless (package-installed-p 'lsp-mode)
  (package-refresh-contents)
  (package-install 'lsp-mode))

(unless (package-installed-p 'lsp-ui)
  (package-refresh-contents)
  (package-install 'lsp-ui))

(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))

(unless (package-installed-p 'go-mode)
  (package-refresh-contents)
  (package-install 'go-mode))

(unless (package-installed-p 'dap-mode)
  (package-refresh-contents)
  (package-install 'dap-mode))

;; Включение lsp-mode и lsp-ui
(require 'lsp-mode)
(require 'lsp-ui)
(require 'company)
(require 'go-mode)
(require 'dap-mode)

;; Настройка LSP для Go
(add-hook 'go-mode-hook #'lsp-deferred)
;; Автоматическое выполнение импортов при сохранении
(add-hook 'before-save-hook
          (lambda ()
            (when (and (derived-mode-p 'go-mode) ; Только для Go
		       (lsp-organize-imports))))) ; Выполнить организацию импортов
(add-hook 'before-save-hook
          (lambda ()
            (when (derived-mode-p 'go-mode) ; Только для Go
              (lsp-format-buffer)))) ; Форматировать буфер

;; Включение lsp-ui
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;; Включение автодополнения
(add-hook 'go-mode-hook 'company-mode)

;; Настройка lsp-ui
(setq lsp-ui-doc-enable t)
(setq lsp-ui-sideline-enable t)
(setq lsp-ui-peek-enable t)

(setq lsp-ui-doc-enable t) ; Включить документацию при наведении
(setq lsp-ui-doc-position 'at-point) ; Показывать документацию рядом с курсором
(setq lsp-ui-sideline-enable t) ; Включить боковые подсказки
(setq lsp-ui-sideline-show-code-actions t) ; Показывать действия (code actions)
(setq lsp-ui-sideline-show-diagnostics t) ; Показывать диагностику (ошибки, предупреждения)
(setq lsp-ui-sideline-show-hover t) ; Показывать информацию при наведении
(setq lsp-ui-sideline-show-symbol t) ; Показывать информацию о символе
(setq lsp-ui-sideline-delay 0.5) ; Задержка перед показом подсказок (в секундах)

;; Настройка company
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.1)

;; Включение dap-mode для отладки
(require 'dap-go)
(add-hook 'dap-mode-hook 'dap-ui-mode)


;; Настройка сочетаний клавиш для LSP в evil-mode
(evil-define-key 'normal lsp-mode-map
  (kbd "gd") 'lsp-find-definition) ; Перейти к определению (как `gd` в Vim)
(evil-define-key 'normal lsp-mode-map
  (kbd "gr") 'lsp-find-references) ; Найти ссылки (как `gr` в Vim)
(evil-define-key 'normal lsp-mode-map
  (kbd "K") 'lsp-ui-doc-glance) ; Показать документацию (как `K` в Vim)
(evil-define-key 'normal lsp-mode-map
  (kbd "gt") 'lsp-rename) ; Переименовать символ (как `<leader>r` в Vim)
(evil-define-key 'normal lsp-mode-map
  (kbd "gi") 'imenu) ; показать символы из документа

(global-set-key (kbd "C-c gr")   'lsp-find-references)
(global-set-key (kbd "C-c rn")   'lsp-rename)

;; Отображение вкладок
;; Установка centaur-tabs (если ещё не установлен)
(unless (package-installed-p 'centaur-tabs)
  (package-refresh-contents)
  (package-install 'centaur-tabs))

;; Установка all-the-icons (если ещё не установлен)
(unless (package-installed-p 'all-the-icons)
  (package-refresh-contents)
  (package-install 'all-the-icons))

;; Установка fzf (если ещё не установлен)
(unless (package-installed-p 'fzf)
  (package-refresh-contents)
  (package-install 'fzf))

;; Установка projectile и fzf (если ещё не установлены)
(unless (package-installed-p 'projectile)
  (package-refresh-contents)
  (package-install 'projectile))

(unless (package-installed-p 'fzf)
  (package-refresh-contents)
  (package-install 'fzf))

;; Включение projectile
(require 'projectile)
(projectile-mode 1)

;; Включение fzf
(require 'fzf)

;; Горячие клавиши для поиска файлов в проекте
(global-set-key (kbd "C-c p f") 'fzf-projectile) ; Поиск файлов в проекте
(global-set-key (kbd "C-c p p") 'projectile-switch-project) ; Переключение проектов
(global-set-key (kbd "C-c p a") 'projectile-add-known-project) ; Добавление проекта вручную
(global-set-key (kbd "C-c p r") 'projectile-remove-known-project) ; Удаление проекта

(global-set-key (kbd "C-c p g") 'counsel-rg) ; Поиск по телу файлов в проекте
(global-set-key (kbd "C-c p t") 'treemacs-projectile) ; Открыть treemacs для текущего проекта


;; Дополнительные настройки
(setq fzf/args "--exact --reverse --height 40%") ; Параметры fzf
(setq projectile-globally-ignored-files '("*.log" "*.tmp")) ; Игнорируемые файлы

;; Интеграция projectile с treemacs
(with-eval-after-load 'treemacs
  (treemacs-project-follow-mode 1)) ; Включить интеграцию


(setq treemacs-display-current-project-exclusively t) ; Группировка вкладок по проектам
(add-hook 'projectile-after-switch-project-hook 'treemacs-display-current-project-exclusively)


;; Отключение номеров строк в treemacs
(add-hook 'treemacs-mode-hook
          (lambda ()
            (display-line-numbers-mode -1))) ; Отключить номера строк в treemacs


;; Установка lsp-mode, treemacs и lsp-treemacs (если ещё не установлены)
(unless (package-installed-p 'lsp-mode)
  (package-refresh-contents)
  (package-install 'lsp-mode))

(unless (package-installed-p 'treemacs)
  (package-refresh-contents)
  (package-install 'treemacs))

(unless (package-installed-p 'lsp-treemacs)
  (package-refresh-contents)
  (package-install 'lsp-treemacs))

;; Включение lsp-mode
(require 'lsp-mode)
(add-hook 'go-mode-hook #'lsp-deferred) ; Для Go (замените на нужный режим)

;; Включение treemacs
(require 'treemacs)
(treemacs-mode 1)

;; Интеграция lsp-treemacs
(require 'lsp-treemacs)
(lsp-treemacs-sync-mode 1) ; Включить синхронизацию lsp и treemacs

;; Подсветка файлов с ошибками
(setq lsp-treemacs-error-face 'treemacs-error-face) ; Подсветка ошибок
(setq lsp-treemacs-warning-face 'treemacs-warning-face) ; Подсветка предупреждений
(setq lsp-treemacs-info-face 'treemacs-info-face) ; Подсветка информаци

;; Горячие клавиши для просмотра символов
(global-set-key (kbd "C-c l s") 'lsp-treemacs-symbols) ; Показать символы файла

;; Отключение хлебных крошек в lsp-mode
(setq lsp-headerline-breadcrumb-enable nil)

;; Установка nyan-mode и sublimity (если ещё не установлены)
(unless (package-installed-p 'nyan-mode)
  (package-refresh-contents)
  (package-install 'nyan-mode))


;; Включение nyan-mode
(require 'nyan-mode)
(nyan-mode 1)
(setq nyan-wavy-trail t) ; Включить анимацию "волны"
(setq nyan-animate-nyancat t) ; Включить анимацию кота

;; Установка sublimity (если ещё не установлен)
(unless (package-installed-p 'sublimity)
  (package-refresh-contents)
  (package-install 'sublimity))

;; Установка diff-hl (если ещё не установлен)
(unless (package-installed-p 'diff-hl)
  (package-refresh-contents)
  (package-install 'diff-hl))

;; Включение diff-hl
(require 'diff-hl)
(global-diff-hl-mode 1) ; Включить глобально

;; Подсветка изменений в режиме реального времени
(diff-hl-flydiff-mode 1)

;; Показывать изменения в fringe (боковой области)
(diff-hl-margin-mode 1)

;; Включить diff-hl в magit-status
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

;; Настройка xref
(require 'xref)
(setq xref-prompt-for-identifier nil) ; Не запрашивать идентификатор при поиске
(setq xref-show-definitions-function #'xref-show-definitions-completing-read) ; Использовать completing-read для отображения определений



(use-package google-translate
  :ensure t
  :config
  (setq google-translate-default-source-language "en"
        google-translate-default-target-language "ru"))

(global-set-key (kbd "C-c g t") 'google-translate-at-point) ; Показать символы файла



;; ;; Установка и настройка Centaur Tabs
;; (unless (package-installed-p 'centaur-tabs)
;;   (package-refresh-contents)
;;   (package-install 'centaur-tabs))

;; ;; Активируем Centaur Tabs
;; (require 'centaur-tabs)
;; (centaur-tabs-mode t)

;; ;; Настройки внешнего вида
;; (setq centaur-tabs-set-bar 'over)
;; (setq centaur-tabs-set-icons t)
;; (setq centaur-tabs-style "bar")
;; (setq centaur-tabs-height 24)
;; (setq centaur-tabs-set-modified-marker t)

;; ;; Горячие клавиши
;; (global-set-key (kbd "C-c h") 'centaur-tabs-backward)
;; (global-set-key (kbd "C-c l")  'centaur-tabs-forward)
;; (global-set-key (kbd "C-c t n")   'centaur-tabs-create-new-tab)
;; (global-set-key (kbd "C-c t k")   'centaur-tabs-kill-other-tabs)

;; ;; Интеграция с projectile (опционально)
;; (setq centaur-tabs-buffer-groups-function 'centaur-tabs-projectile-buffer-groups)


;; ;; Темы (опционально)
;; (setq centaur-tabs-set-theme "wave")
;; (setq centaur-tabs-gray-out-icons 'buffer)
;; (setq centaur-tabs-colorize-current-tab t)


;; терминал
(use-package vterm
  :ensure t
  :config
  (setq vterm-max-scrollback 10000))  ;; Увеличить буфер прокрутки

;; отключение номеров строк для vterm
(add-hook 'vterm-mode-hook
          (lambda ()
            (display-line-numbers-mode -1)))


;; Настройка org-babel для поддержки SQL
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sql . t)))

;; Включение lsp-mode
(require 'lsp-mode)
(add-hook 'sql-mode-hook #'lsp)

(add-hook 'sql-mode-hook 'lsp)
(setq lsp-sqls-workspace-config-path "root")

;; Использование LSP в Org mode
(add-hook 'org-mode-hook
          (lambda ()
            (when (org-in-src-block-p 'sql)
              (lsp))))


;; Установка Magit
(unless (package-installed-p 'magit)
  (package-refresh-contents)
  (package-install 'magit))

;; Настройка Magit
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status) ; Открыть Magit по C-x g
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)) ; Открывать Magit в текущем окне


;; плавный скролл
(use-package good-scroll
  :ensure t
  :config
  (good-scroll-mode 1))

