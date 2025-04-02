go install github.com/sqls-server/sqls@latest

rm -rf ~/.emacs.d
mkdir ~/.emacs.d
cp init.el ~/.emacs.d/init.el
cp hotkey.el ~/.emacs.d/hotkey.el
cp font.el ~/.emacs.d/font.el
cp evil.el ~/.emacs.d/evil.el
cp vterm.el ~/.emacs.d/vterm.el
cp flycheck.el ~/.emacs.d/flycheck.el
cp helm.el ~/.emacs.d/helm.el
cp ui.el ~/.emacs.d/ui.el
