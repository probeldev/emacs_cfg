
;; скрытие toolbar, menu, statusline
(tool-bar-mode -1)
(setq mode-line-format nil)
(menu-bar-mode -1)

;; Отключение скроллбара
(scroll-bar-mode -1)

;; Включение подсветки текущей строки
(global-hl-line-mode 1)
(set-face-background 'hl-line "#eeeeee")  ;; Темно-синий фон

;; отключение мигание курсора
(blink-cursor-mode -1)

(setq inhibit-startup-message t) ;; Отключить стартовое сообщение

;; Включение отображения номеров строк
(global-display-line-numbers-mode 1)

;; Отключение номеров строк в определённых режимах
(add-hook 'dired-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))
