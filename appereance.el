					; Don't diplay the ugly startup message (particularly ugly in the GUI
(setq inhibit-startup-message t)

					; No toolbar
(tool-bar-mode -1)

					; Get rid of the butt ugly OSX scrollbar GUI
(when (display-graphic-p) (set-scroll-bar-mode nil))

					; Use solarized dark (in GUI)
(when (display-graphic-p) (load-theme 'solarized-dark t))
