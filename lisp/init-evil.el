(require-package 'evil)
(require 'evil)
(evil-mode 1)
(require-package 'evil-nerd-commenter)
(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

(require-package 'key-chord)
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-normal-state-map ",," 'evil-force-normal-state)
(key-chord-define evil-visual-state-map ",," 'evil-change-to-previous-state)
(key-chord-define evil-insert-state-map ",," 'evil-normal-state)
(key-chord-define evil-replace-state-map ",," 'evil-normal-state)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

(provide 'init-evil)
