
;; LSP
(global-set-key (kbd "C-c l s") 'imenu) ; Показать символы файла
(global-set-key (kbd "C-c l e")   'lsp-ui-flycheck-list) ; Показать ошибки из проекта
(global-set-key (kbd "C-c l r")   'lsp-treemacs-references)
(global-set-key (kbd "C-c l n")   'lsp-rename)
(global-set-key (kbd "C-c l d")   'lsp-find-definition)
(global-set-key (kbd "C-c l k")   'lsp-ui-doc-glance)

;; Настройка сочетаний клавиш для LSP в evil-mode
;; (evil-define-key 'normal lsp-mode-map
;;   (kbd "gd") 'lsp-find-definition) ; Перейти к определению (как `gd` в Vim)
;; (evil-define-key 'normal lsp-mode-map
;;   (kbd "gr") 'lsp-find-references) ; Найти ссылки (как `gr` в Vim)
;; (evil-define-key 'normal lsp-mode-map
;;   (kbd "K") 'lsp-ui-doc-glance) ; Показать документацию (как `K` в Vim)
;; (evil-define-key 'normal lsp-mode-map
;;   (kbd "gt") 'lsp-rename) ; Переименовать символ (как `<leader>r` в Vim)
;; (evil-define-key 'normal lsp-mode-map
;;   (kbd "gi") 'imenu) ; показать символы из документа


;; Проекты
(global-set-key (kbd "C-c p f") 'fzf-projectile) ; Поиск файлов в проекте
(global-set-key (kbd "C-c p p") 'projectile-switch-project) ; Переключение проектов
(global-set-key (kbd "C-c p a") 'projectile-add-known-project) ; Добавление проекта вручную
(global-set-key (kbd "C-c p r") 'projectile-remove-known-project) ; Удаление проекта
(global-set-key (kbd "C-c p g") 'counsel-rg) ; Поиск по телу файлов в проекте
(global-set-key (kbd "C-c p t") 'treemacs-projectile) ; Открыть treemacs для текущего проекта



(global-set-key (kbd "C-c g t") 'google-translate-at-point) ; Перевести выделенный текст

(global-set-key (kbd "C-c s s") 'bs-show) ; показать список буферов
(global-set-key (kbd "C-c vv") 'vterm) ; показать список буферов


;; TREEMACS
(global-set-key (kbd "C-c tt") 'treemacs) ; Открытие/закрытие
(global-set-key (kbd "C-c ta") 'treemacs-create-file) ; Создание файла
(global-set-key (kbd "C-c tf") 'treemacs-create-dir) ; Создание директории 
(global-set-key (kbd "C-c tm") 'treemacs-move-file) ; Перемещение файла
(global-set-key (kbd "C-c td") 'treemacs-delete-file) ; Удаление файла



