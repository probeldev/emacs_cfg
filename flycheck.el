;; -*- lexical-binding: t; -*-

;; Установка и настройка flycheck
(use-package flycheck
  :ensure t
  :init
  ;; Включить flycheck глобально
  (global-flycheck-mode 1)
  :config
  ;; Настройка отображения ошибок
  (setq flycheck-display-errors-function #'flycheck-display-error-messages)
  (setq flycheck-indication-mode 'right-fringe) ; Показывать ошибки в правом поле
  (setq flycheck-check-syntax-automatically '(save mode-enabled)) ; Проверять при сохранении и включении режима

  ;; Настройка горячих клавиш для flycheck
  ;; (global-set-key (kbd "C-c e") 'flycheck-list-errors) ; Список ошибок
  ;; (global-set-key (kbd "C-c n") 'flycheck-next-error) ; Следующая ошибка
  ;; (global-set-key (kbd "C-c p") 'flycheck-previous-error) ; Предыдущая ошибка

  ;; Интеграция с LSP (если lsp-mode установлен)
  (with-eval-after-load 'lsp-mode
    (add-hook 'lsp-mode-hook 'flycheck-mode))

  ;; Включить всплывающие подсказки с ошибками
  (use-package flycheck-pos-tip
    :ensure t
    :after flycheck
    :config
    (flycheck-pos-tip-mode))

  ;; Настройка flycheck для конкретных языков
  (setq flycheck-checkers
        '(javascript-eslint
          python-pylint
          go-golint
          rust-clippy
          c/c++-gcc
          yaml-jsyaml
          json-jsonlint))

  ;; Отключить ненужные проверки
  (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))

  ;; Настройка поведения flycheck
  (setq flycheck-highlighting-mode 'lines) ; Подсвечивать всю строку с ошибкой
  (setq flycheck-mode-line-prefix "FC") ; Префикс в модельной строке
  (setq flycheck-mode-line-lighter " ✓") ; Иконка в модельной строке

  ;; Логирование flycheck (для отладки)
  (setq flycheck-log-level 3) ; Уровень логирования (0 - отключено, 3 - максимальный)

)

