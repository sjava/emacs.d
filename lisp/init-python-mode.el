(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

(require-package 'py-autopep8)
(require'py-autopep8)
(add-hook 'before-save-hook 'py-autopep8-before-save)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(provide 'init-python-mode)
