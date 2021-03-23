;; Inhibit startup screen
(setq inhibit-splash-screen t)

;; Don't make backups
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Store backup and autosave
(setq backup-directory-alist
`((".*" . ,"~/.emacs.d/backup/")))
(setq auto-save-file-name-transforms
`((".*" ,"~/.emacs.d/backup/" t)))

;; Set tab width and stops
(setq-default tab-width 4)
(setq-default tab-stop-list (number-sequence 4 200 4))

;; Convert tabs to spaces
(setq-default indent-tabs-mode nil)

;; Bind backspace key
(keyboard-translate ?\C-h ?\C-?) 
