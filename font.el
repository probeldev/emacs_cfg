;; Настройка шрифта для новых фреймов
(add-to-list 'default-frame-alist '(font . "FiraCode Nerd Font Mono-11"))

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
