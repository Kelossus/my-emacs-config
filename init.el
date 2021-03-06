; Use the package manager
(require 'package)

; Sets package management sources
(add-to-list 'package-archives
	                  '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives 
		                  '("gnu" . "http://elpa.gnu.org/packages/")))

; Initialize the package manager
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(evil
    ein
    elpy
    flycheck
    py-autopep8
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)



(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

; Load configuration modules
(load-user-file "evil.el")
(load-user-file "appereance.el")
(load-user-file "python_utils.el")


