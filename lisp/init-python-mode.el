(require 'python)

(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args "--pylab"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

(require-package 'py-autopep8)
(require 'py-autopep8)
(add-hook 'before-save-hook 'py-autopep8-before-save)

; (require-package 'jedi)
; (require 'jedi)
; (add-hook 'python-mode-hook 'jedi:setup)
; (setq jedi:complete-on-dot t)


(require-package 'anaconda-mode)
(require-package 'ac-anaconda)
(require 'anaconda-mode)
(require 'ac-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'ac-anaconda-setup)
(add-hook 'python-mode-hook 'eldoc-mode)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'init-python-mode)
