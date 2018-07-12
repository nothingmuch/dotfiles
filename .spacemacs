;; -*- lexical-binding: t -*-
;; -*- mode: emacs-lisp -*-


;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'nil
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/Dropbox/backup/emacs/spacemacs/layers/")
   ;; dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; helm
     ;; pdf-tools
     ;; latex
     ;; python
     clojure
     csv
     common-lisp
     emacs-lisp
     erc
     git
     github
     html
     ivy
     javascript
     markdown
     org
     osx
     plantuml
     scala
     shell-scripts
     spacemacs-layouts
     syntax-checking
     themes-megapack
     theming
     version-control
     (shell :variables
            shell-default-shell 'eshell)
     (elfeed :variables
             rmh-elfeed-org-files (list "~/Dropbox/backup/emacs/elfeed-feeds.org"))
     (c-c++ :variables
            c-c++-enable-clang-support t)
     (auto-completion :variables
                      ;; auto-completion-private-snippets-directory "~/Dropbox/backup/emacs/yasnippet-snippets/"
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-enable-help-tooltip nil
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup nil
                      :disabled-for latex)
     (spell-checking :variables
                     spell-checking-enable-by-default nil
                     enable-flyspell-auto-completion t)
     andre-common-lisp
     andre-elfeed
     andre-erc
     andre-eww
     andre-ivy
     ;; andre-slack
     ;; slack
     nov)


   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(atomic-chrome
                                      eww-lnum
                                      hyperbole
                                      deadgrep
                                      w32-browser
                                      worf
                                      beacon
                                      google-this
                                      ix
                                      lispy
                                      exec-path-from-shell
                                      ;; org-mode
                                      org-beautify-theme
                                      ;; org-alert
                                      org-cliplink
                                      org-trello
                                      org-gcal ox-epub
                                      org-pdfview
                                      org-variable-pitch
                                      ox-clip
                                      ox-twbs) ;; see pre-requisites at https://github.com/jkitchin/ox-clip

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only)

  ;; OS-specific layers
  ;; (when (spacemacs/system-is-mswindows)
  ;;   (append dotspacemacs-configuration-layers
  ;;           '(autohotkey)))
  ;; (when (spacemacs/system-is-mac)
  ;;   (append dotspacemacs-configuration-layers
  ;;           '(osx)))
  )

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(gruvbox
                         sanityinc-solarized-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil

   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout t
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil

   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil

   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom

   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  ;; Commenting this in favour of exec-path-from-shell - Spacemacs messes with sourced function.
  ;; (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  (defun andre/org-insert-question ()
    (interactive)
    (org-insert-heading-after-current)
    (insert "Answer")
    (evil-previous-line)
    (org-insert-heading-after-current)
    (org-promote))

  (defun andre/org-mode-readable ()
    (interactive)
    (setq line-spacing 0.1)
    (variable-pitch-mode))

  (spacemacs/add-to-hooks 'org-variable-pitch-minor-mode '(org-mode-hook))

  (spacemacs/add-to-hooks 'andre/org-mode-readable '(org-mode-hook markdown-mode-hook)))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; exec-path-from-shell
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))

  ;; todo.org folder
  (setq andre-type-env (if (file-exists-p "~/.emacs-work") 'work-mac 'home-mac))

  (setq andre--home-todo-path "~/Dropbox/org/todo-home.org")
  (setq andre--work-todo-path "~/Dropbox/nu/org/todo-work.org")

  ;; set screenshot folder
  (cond ((eq andre-type-env 'work-mac) (setq andre--screenshot-folder "~/Screenshots"))
        ((eq andre-type-env 'home-mac) (setq andre--screenshot-folder "~/Dropbox/Screenshots")))

  ;; set todo file path
  (cond ((eq andre-type-env 'work-mac) (setq andre--path-to-org-todo andre--work-todo-path))
        ((eq andre-type-env 'home-mac) (setq andre--path-to-org-todo andre--home-todo-path)))

  ;; set other folders
  (setq andre--path-to-books-file "~/Dropbox/org/books.org")

  ;; nov.el (epub reader)
  (push '("\\.epub\\'" . nov-mode) auto-mode-alist)

  ;; workspaces.el path
  (setq andre--workspaces-path "~/Dropbox/backup/emacs/workspaces.el")

  ;; Borks Emacs when clojure exception buffer pops up (???)
  ;; beacon
  ;; (beacon-mode 1)
  ;; (setq beacon-color 0.3)

  ;; Editing styles
  (define-key evil-hybrid-state-map (kbd "C-w") 'evil-delete-backward-word)


  ;; My functions
  ;; modified from http://ergoemacs.org/emacs/elisp_change_space-hyphen_underscore.html
  (defun andre/dash-to-underscore-region (@begin @end)
    "Change dash char to underscore."
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region @begin @end)
        (goto-char (point-min))
        (while
            (re-search-forward "-" (point-max) "NOERROR")
          (replace-match "_" "FIXEDCASE" "LITERAL")))))

  ;; "he said \"hello world\"\" => 'he said "hello world"'
  ;; 'he said "hello world"' => "he said \"hello world\"\"
  (defun andre/swap-literal-quote (@begin @end)
    "Transform string in region from quoted to literal or vice-versa. Region must include the enclosing quotes."
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region @begin @end)
        (goto-char (point-min))
        (let* ((delete-active-region nil)
               (str-is-literal (char-equal ?' (following-char)))
               (new-delimiter-quote (if str-is-literal "\"" "'"))
               (quote-regex "\"")
               (escaped-quote-regex "\\\\\"")
               (quote-to-be-replaced-regex (if str-is-literal quote-regex escaped-quote-regex))
               (new-quote-regex (if str-is-literal escaped-quote-regex quote-regex)))
          (message new-delimiter-quote)
          (delete-forward-char 1)
          (insert new-delimiter-quote)
          (while
              (re-search-forward quote-to-be-replaced-regex (point-max) "NOERROR")
            (replace-match new-quote-regex))
          (goto-char (point-max))
          (delete-backward-char 1)
          (insert new-delimiter-quote)))))

  (defun andre//read-lines (filePath)
    "Return a list of lines of a file at filePath."
    (with-temp-buffer (insert-file-contents filePath) (split-string (buffer-string) "\n" t)))

  (defun andre/reader-mode ()
    "Activates variable pitch mode and scales up the font."
    (variable-pitch-mode 1)
    (spacemacs/scale-up-font)
    (spacemacs/scale-up-font))

  (defun andre/convert-file-name-to-my-standard-format (filename)
    "Change given string to lower case and replace , to _."
    (interactive "s")
    (let* ((filename-downcase (downcase filename))
           (filename-without-commas (replace-regexp-in-string "," "" filename-downcase))
           (filename-without-whitespace (replace-regexp-in-string " " "_" filename-without-commas)))
      (message filename-without-whitespace)
      (kill-new filename-without-whitespace)))

  (cl-defun andre/open-pdf (pdf-file &key (execute-enlarge-window-right-horizontally nil execute-enlarge-window-right-horizontally-p) (fit-page nil fit-page-p))
    "Open pdf file in the last bookmarked page."
    (find-file pdf-file)
    (when execute-enlarge-window-right-horizontally-p (spacemacs/enlarge-window-horizontally 15))
    (when fit-page-p (pdf-view-set-slice-from-bounding-box))
    (ignore-errors
      (bookmark-jump (buffer-name))))

  ;; from http://stackoverflow.com/questions/7937395/select-the-previously-selected-window-in-emacs (user Anders Waldenborg)
  (defun andre/switch-to-the-window-that-displays-the-most-recently-selected-buffer ()
    (interactive)
    (let* ((buflist (buffer-list (selected-frame))) ; get buffer list in this frames ordered
           (buflist (delq (current-buffer) buflist)) ; if there are multiple windows showing same buffer.
           (winlist (mapcar 'get-buffer-window buflist)) ; buf->win
           (winlist (delq nil winlist)) ; remove non displayed windows
           (winlist (delq (selected-window) winlist))) ; remove current-window
      (if winlist
          (select-window (car winlist))
        (message "Couldn't find a suitable window to switch to"))))

  ;; macros
  ;; indent pasted text
  (fset 'andre/org-babel-indent-and-quit
        (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([escape 32 109 39 103 103 86 71 61 M-return 39 f3 105 backspace escape 106 106 106 106 106 106 106 111 return escape] 1 "%d")) arg)))

  (evil-set-register ?p "`[v`]\361")

  ;; Common Lisp
  (setq inferior-lisp-program "/usr/local/bin/clisp")

  ;; lispy
  (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1)))
  (add-hook 'clojure-mode-hook (lambda () (lispy-mode 1)))


  ;; test clj refactor
  ;; (setq cljr-middleware-ignored-paths '("test.*"))
  ;; (setq cljr-middleware-ignored-paths nil)

  ;; keybindings
  (spacemacs/set-leader-keys "w o" 'andre/switch-to-the-window-that-displays-the-most-recently-selected-buffer
    "p d" 'deadgrep)

  (global-set-key (kbd "C-x C-l") 'evil-complete-next-line)
  (evil-leader/set-key
    ;; files
    "oft" '(lambda () (interactive) (find-file andre--path-to-org-todo))
    ;; org
    "oa" 'org-agenda
    "oc" 'counsel-org-capture
    "oji" 'counsel-org-goto-all
    ;; other
    "ogp" 'andre/add-commit-push
    "ogc" 'org-clock-goto)

  ;; insert mode keybinding
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char)

  ;; Helm
  ;; TODO: won't work
  (setq helm-locate-fuzzy-match nil)
  (with-eval-after-load 'helm-mode
    ;; save last command, even if it failed
    (setq helm-M-x-always-save-history t)
    (define-key helm-map (kbd "s-8")  'helm-select-action)
    (define-key helm-map (kbd "M-f")  'helm-enlarge-window))

  ;; Company
  (with-eval-after-load 'company
    ;; TODO: 8 gets in the way very often. Find a better key.
    ;; (define-key company-active-map "8" 'helm-company)
    (define-key company-active-map (kbd "C-w") 'evil-delete-backward-word))

  ;; TODO: Check whether it's still necessary to set fuzzy match nil on Darwin
  ;; needed to make mdfind work on helm
  (if (eq system-type 'darwin) (setq helm-locate-fuzzy-match nil))
  (setq helm-locate-command
        (case system-type
          ('gnu/linux "locate %s %s")
          ;; ('gnu/linux "locate -i -r %s")
          ('berkeley-unix "locate -i %s")
          ('windows-nt "es %s %s")
          ('darwin "mdfind -name %s %s")
          (t "locate %s %s")))

  ;; Smartparens
  (smartparens-global-mode t)
  (setq sp-highlight-pair-overlay nil)
  (setq sp-highlight-wrap-overlay nil)
  (setq sp-highlight-wrap-tag-overlay nil)

  ;; do not ask question about following symlinks
  (setq vc-follow-symlinks t)

  ;; Doc-view
  (setq large-file-warning-threshold nil)

  ;; Spelling - flyspell
  ;; (setq ispell-dictionary "british")
  (add-hook 'git-commit-setup-hook 'git-commit-turn-on-flyspell)

  ;; Holidays
  ;; Do not use all default holidays.
  (setq holiday-christian-holidays nil)
  (setq holiday-hebrew-holidays nil)
  (setq holiday-islamic-holidays nil)
  (setq holiday-bahai-holidays nil)
  (setq holiday-oriental-holidays nil)

  ;; Truncate lines
  (spacemacs/add-to-hooks 'spacemacs/toggle-truncate-lines '(org-mode-hook markdown-mode-hook))
  (spacemacs/add-to-hooks 'worf-mode '(org-mode-hook))

  ;; scheme
  (setq scheme-program-name  "/usr/local/bin/mit-scheme")

  ;; Pdf-tools
  ;; work around for the fact that pdf goes back to page 1 due to
  ;; `image-mode' behaviour
  ;; this snippet makes it switch back to the page it was before
  ;; note that it doesn't work if the previous page was the first
  (defun andre//pdf-view-restore ()
    (cl-loop for win in (window-list)
             do (with-selected-window win
                  (when (eql major-mode 'pdf-view-mode)
                    (let ((current-page (image-mode-window-get 'page)))
                      (when
                          (not (eq current-page 1))
                        (setq-local last-viewed-page current-page))
                      (when
                          (and
                           (eq current-page 1)
                           (boundp 'last-viewed-page))
                        (pdf-view-goto-page last-viewed-page)
                        (bookmark-set (buffer-name))))))))
  (spacemacs/add-to-hook 'window-configuration-change-hook '(andre//pdf-view-restore))

  (defun andre//pdf-tools--jump-to-last-page-viewed-in-last-session ()
    (bookmark-maybe-load-default-file)
    (condition-case err
        (bookmark-jump (buffer-name))
      (error
       (princ (format "Unable to get to last bookmark. Error: %s" err)))))
  (spacemacs/add-to-hook 'pdf-view-mode-hook '(andre//pdf-tools--jump-to-last-page-viewed-in-last-session))

  ;; Yasnippet
  (add-to-list 'warning-suppress-types '(yasnippet backquote-change))


  ;; Aux function
  (defun andre/indent-buffer ()
    "Indents current buffer"
    (interactive)
    (indent-region (point-min) (point-max)))

  ;; Indent org babel block
  ;; from http://stackoverflow.com/questions/15773354/indent-code-in-org-babel-src-blocks
  (defun andre/org-indent-org-src-block ()
    (interactive)
    (org-edit-special)
    (andre/indent-buffer)
    (org-edit-src-exit))

  (with-eval-after-load 'org

    ;; Org keybindings
    (evil-define-key 'normal org-mode-map
      (kbd "[") 'andre/go-to-worf-in-previous-heading
      (kbd "]") 'andre/go-to-worf-in-next-heading)


    (defun andre/go-to-worf-in-previous-heading ()
      (interactive)
      (worf-backward)
      (evil-insert 0))

    (defun andre/go-to-worf-in-next-heading ()
      (interactive)
      (worf-forward)
      (evil-insert 0))

    ;; removes markers such as * in *bold*, / in /italic/ etc
    (setq org-hide-emphasis-markers t)

    ;; show markdown in list of exported formats
    (require 'ox-md nil t)

    ;; From https://github.com/cadadr/elisp/blob/master/org-variable-pitch.el
    (require 'org-variable-pitch)
    (setq org-variable-pitch-fixed-font "Source Code Pro")

    ;; org-alert
    ;; bug is enlarging window (??)
    ;; (require 'org-alert)
    ;; (setq alert-default-style 'osx-notifier)
    ;; (org-alert-enable)


    ;; org-mode leader key keybindings
    (spacemacs/set-leader-keys-for-major-mode 'org-mode
      "ji"  'counsel-org-goto
      "jI"  'counsel-org-goto-all
      "ic"  'org-cliplink
      "ip"  'andre/paste-html2org-clipboard
      "iq"  'andre/org-insert-question
      "od"  'org-drill
      "oti" 'org-toggle-inline-images
      "o'"  'org-babel-indent-and-quit
      "ocf" 'org-capture-finalize
      "oi"  'andre/insert-org-image
      "n"   'org-cycle-agenda-files)

    ;; From https://github.com/syl20bnr/spacemacs/tree/develop/layers/org :
    ;; "Since version 0.104, spacemacs uses the org version from the org ELPA repository instead of the one shipped with emacs. Then, any org related code should not be loaded before dotspacemacs/user-config, otherwise both versions will be loaded and will conflict.
    ;; Because of autoloading, calling to org functions will trigger the loading up of the org shipped with emacs wich will induce conflicts. One way to avoid conflict is to wrap your org config code in a with-eval-after-load block like this:"


    ;; Org
    (setq org-columns-default-format
          "%45ITEM %TODO %3PRIORITY %TIMESTAMP")

    (setq org-startup-indented t)
    ;; hard wrap
    ;; (spacemacs/add-to-hooks 'turn-on-auto-fill '(org-mode-hook))

    ;; soft wrap (won't work...)
    ;; (spacemacs/add-to-hooks 'visual-fill-column-mode '(visual-line-mode-hook))
    ;; (spacemacs/add-to-hooks 'turn-on-visual-line-mode '(org-mode-hook))
    ;; (setq fill-column 80)

    ;; truncate lines (based on window size)
    (setq org-startup-truncated t)

    ;; see http://orgmode.org/manual/Initial-visibility.html
    (setq org-startup-folded "showeverything")
    (setq org-agenda-inhibit-startup nil)

    ;; org-habit
    (setq org-habit-following-days 0)
    (setq org-habit-preceding-days 7)
    (setq org-habit-graph-column 55)
    (setq org-habit-show-all-today t) ;; show completed tasks too

    ;; export only subtree
    (defun andre/org-export-subtree-to-markdown-github ()
      (interactive)
      (org-md-export-to-markdown nil t nil))

    ;; save the clock history across Emacs sessions
    (setq org-clock-persist 'history)
    (org-clock-persistence-insinuate)
    (spacemacs/toggle-mode-line-org-clock-on)

    ;; comments org.el line to prevent org drill bug
    ;; from https://bitbucket.org/eeeickythump/org-drill/issues/30/random-blank-buffer-2
    ;; created by Joe Schafer
    (defun andre/work-around-org-window-drill-bug ()
      (interactive)
      "Comment out a troublesome line in `org-toggle-latex-fragment'.
See https://bitbucket.org/eeeickythump/org-drill/issues/30 for
details."
      (save-excursion
        (let ((org-library-location (concat
                                     (locate-library "org" 'nosuffix)
                                     ".el")))
          (with-current-buffer (find-file-noselect org-library-location)
            (goto-char (point-min))
            (search-forward "(set-window-start nil window-start)")
            (back-to-indentation)
            (if (looking-at ";; ")
                (message "Already modified `org-toggle-latex-fragment' for `org-drill'")
              (insert ";; ")
              (save-buffer)
              (byte-compile-file org-library-location)
              (elisp--eval-defun)
              (message "Modified `org-toggle-latex-fragment' for `org-drill'"))))))

    ;; (setq org-todo-keywords
    ;;       '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "DONE(d)")))

    ;; Multi-state worflows: http://orgmode.org/guide/Multi_002dstate-workflows.html
    ;; Options for each state:
    ;;   "!" adds timestamp for state logging
    ;;   "@" asks for note when changing to the state
    ;; Adapted from http://doc.norang.ca/org-mode.html
    (setq org-todo-keywords
          (quote ((sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "|" "DONE(d)")
                  (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

    ;; By default, ~org-store-link~ returns the name of the heading, which can be stored as a link with ~org-insert-link~, which will insert [[name-of-the-heading]].
    ;; This is not a good approach, because if the header name is modified, the link gets broken.
    ;; Setting this variable to true makes ~org-store-link~ create =:PROPERTIES= (thus, an ID). So we can link to the ID instead of the name of heading - much less fragile.
    (setq org-id-link-to-org-use-id t)


    ;; babel
    ;; List of languages that can be executed with <C-c><C-c>.
    (org-babel-do-load-languages
     'org-babel-load-languages
     '((emacs-lisp . t)
       (shell . t)))

    (setq org-confirm-babel-evaluate nil)

    (setq org-confirm-shell-link-function nil)
    (setq org-confirm-elisp-link-function nil)

    ;; Make org-mode consider the line above the image path indicating its
    ;; size and use it inline and when exporting.
    (setq org-image-actual-width nil)
    ;; (setq org-image-actual-width t)

    ;; Pretify Special symbols as UTF-8 characters
    ;; (setq org-pretty-entities t)

    ;; org-drill

    ;; From the org-drill manual: "By default, you will be prompted to save all unsaved buffers at the end of a drill session. If you don't like this behaviour, use the following setting:"
    (setq org-drill-save-buffers-after-drill-sessions-p nil)

    ;; The lower, the more frequently items appear. Default is 0.5.
    (setq org-drill-learn-fraction 0.4)

    ;; org-capture
    (setq org-capture-templates
          '(("t" "Todo (Work)" entry (file+headline andre--work-todo-path "Tasks")
             "* TODO %?\n%U\n  %i")
            ("h" "Todo (Home)" entry (file+headline andre--home-todo-path "Tasks")
             "* TODO %?\n%U\n  %i")
            ("l" "Learn" entry (file+headline andre--home-todo-path "Learn")
             "* TODO %?\n%U\n  %i")
            ("m" "Music" entry (file+headline "~/Dropbox/org/music_download_and_audition.org" "Download")
             "* TODO Download\n%U\nComposer: %? \nWork: \nLink: %i")
            ("i" "Ideas" entry (file+headline andre--path-to-org-todo "Ideas")
             "* %? \n%U\n Description: %i")
            ("b" "Books" entry (file+headline andre--path-to-books-file "Unclassified")
             "* TODO %? \n%U\nAuthor: \n [[][Amazon]] %i")
            ("e" "Emacs" entry (file+headline "~/Dropbox/org/emacs.org" "Emacs tasks")
             "* TODO %?\n%U\n %i")))

    ;; org-agenda
    (setq org-default-notes-file andre--path-to-org-todo)
    (setq org-agenda-files `(,andre--home-todo-path ,andre--work-todo-path))

    ;; org-refile
    (setq org-refile-targets `((,andre--home-todo-path :maxlevel . 3)
                               (,andre--work-todo-path :maxlevel . 3)
                               (,andre--path-to-books-file :maxlevel . 3)))


    ;; >= emacs 25
    (setq search-default-mode #'char-fold-to-regexp)

    ;; org agenda
    (setq org-agenda-span 'month)

    (setq org-agenda-custom-commands '(("w" "Work tasks" ((tags-todo "work")
                                                          (org-agenda-prefix-format "$l%t%s")))
                                       ("h" "Home tasks" tags-todo "home")))

    ;; Functions
    ;; Insert image from Screenshot's folder to org-mode buffer
    ;; Thanks to finster from #emacs on freenode for providing that code. I added the insertion and newline.
    ;; (defun get-newest-file-from-dir (dir)
    ;;   "Return the file name of the newes file in DIR."
    ;;   (when (file-directory-p dir)
    ;;     (expand-file-name (car (split-string (shell-command-to-string (format "ls -t %s | head -1" dir)) "\n" t))
    ;;                       dir)))

    ;; org-pdfview
    ;; from org-pdfview.el
    (require 'org-pdfview)
    ;; Relevant? https://github.com/markus1189/org-pdfview/issues/10
    (add-to-list 'org-file-apps '("\\.pdf\\'" . org-pdfview-open))
    (add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" . org-pdfview-open))

    ;; config from user 'basphemy' in #emacs
    (defvar bas/last-org-gcal-sync nil)

    (defun andre/insert-org-image ()
      "Moves image from Dropbox folder to ./media, inserting org-mode link"
      (interactive)
      (cl-labels ((get-newest-file-from-dir  (path)
                                             (car (directory-files path 'full nil #'file-newer-than-file-p))))
        (let* ((indir (expand-file-name andre--screenshot-folder))
               (infile (get-newest-file-from-dir indir))
               (outdir (concat (file-name-directory (buffer-file-name)) "/media"))
               (outfile (expand-file-name (file-name-nondirectory infile) outdir)))
          (unless (file-directory-p outdir)
            (make-directory outdir t))
          (rename-file infile outfile)
          (insert (concat (concat "[[./media/" (file-name-nondirectory outfile)) "]]")))
        (newline)
        (newline)))

    ;; org-beautify
    (setq org-beautify-theme-use-box-hack nil)
    ;; (load-theme spacemacs--cur-theme)
    ;; (load-theme 'org-beautify)

    ;; from https://github.com/abo-abo/worf/issues/31
    (defun andre-brackets ()
      (interactive)
      (message "hi people")
      (insert "[]")
      (backward-char))

    (evil-define-key 'insert evil-org-mode-map
      (kbd "}") 'andre-brackets))

  ;; (add-hook 'spacemacs-post-theme-change-hook
  ;;           '(lambda () (load-theme 'org-beautify)))

  ;; those keybindings don't work unless they are defined here - not sure why
  ;; see https://github.com/syl20bnr/spacemacs/issues/5875
  ;; (define-key cider-repl-mode-map (kbd "C-k") 'cider-repl-previous-input)
  ;; (define-key cider-repl-mode-map (kbd "C-j") 'cider-repl-next-input)


  ;; Cider
  ;; Fuzzy completion
  ;; https://github.com/alexander-yakushev/compliment/wiki/Examples

  (defun andre-cider-hook ()
    (cider-load-file (expand-file-name "lispy-clojure.clj" lispy-site-directory))
    (cider-nrepl-sync-request:eval "(clojure.tools.namespace.repl/set-refresh-dirs \"src\")")
    (cider-ns-refresh))

  (add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
  (add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
  (add-hook 'cider-connected-hook 'andre-cider-hook)

  ;; stop asking "Active processes exist; kill them and exit anyway"
  (setq confirm-kill-processes nil)

  ;; make let bindings global (HACKISH)
  (setq andre--catpure-let-binding "(defmacro my-locals [] (let [my-bindings (seq (into {} (map (juxt (comp keyword name) identity)) (keys &env)))] (for [[my-name value] my-bindings] (list 'def (symbol (name my-name)) value))))")
  (defun andre--but-last (str)
    (substring str 0 (- (length str) 1)))

  (defun andre-make-let-bindings-global ()
    (interactive)
    (let* ((b-str (lispy--string-dwim))
           ;; (let [a b] foo) -> (let [a b] foo (my-locals))
           (form-with-macro (concat (andre--but-last b-str) " (my-locals))")))
      (message form-with-macro)
      (cider-nrepl-sync-request:eval andre--catpure-let-binding)
      (cider-nrepl-sync-request:eval form-with-macro)))

  ;; From https://oremacs.com/2014/12/31/keymap-arms-race/
  ;; Prevent '/' (lispy-splice) from being overriden
  (defun raise-minor-mode (mode)
    "Make MODE the first on `minor-mode-map-alist'."
    (let ((x (assq mode minor-mode-map-alist)))
      (when x
        (setq minor-mode-map-alist
              (cons x (delq mode minor-mode-map-alist))))))

  (defun andre/raise-lispy-minor-mode ()
    (raise-minor-mode 'lispy-mode))

  (spacemacs/add-to-hook
   'clojure-mode-hook
   '(andre/raise-lispy-minor-mode))

  ;; default was `find-file-in-project` (https://github.com/technomancy/find-file-in-project)
  (defun andre/display-ansi-colours ()
    (interactive)
    (let ((inhibit-read-only t))
      (ansi-color-apply-on-region (point-min) (point-max))))

  (setq lispy-visit-method 'projectile-find-file)
  ;; lispy keybindings
  (defun andre/lispy-backward-and-go-to-insert-mode ()
    (interactive)
    (lispy-backward 0)
    (evil-insert 0))
  (defun andre/lispy-forward-and-go-to-insert-mode ()
    (interactive)
    (lispy-forward 1)
    (evil-insert 0))
  ;; 'g' requires tags setup, so let's just use imenu instead

  (defun andre/lispy-imenu-fallback ()
    (interactive)
    (call-interactively 'counsel-imenu)
    ;; (if (eql major-mode 'clojure-mode)
    ;;     (call-interactively 'imenu)
    ;;   (lispy-goto-mode))
    )

  ;; Midje messages use ansi colours
  (defun andre/lispy-coloured-message (orig-fun &rest args)
    ;; TODO: check clojure mode!
    (if (or (> (length (car args)) 4000) (> (cl-count ?\n (car args)) (or 14 (* (window-height (frame-root-window)) max-mini-window-height))))
        ;; using ansi-color-apply won't work for all colours
        (progn
          (apply orig-fun args)
          (with-current-buffer (pop-to-buffer "*lispy-message*")
            (andre/display-ansi-colours)))
      (progn
        (apply orig-fun (list (ansi-color-apply (car args)))))))

  (eval-after-load "lispy"
    `(progn (advice-add 'lispy-message :around #'andre/lispy-coloured-message)
            (lispy-define-key lispy-mode-map "g" 'andre/lispy-imenu-fallback)
            ;; (lispy-define-key lispy-mode-map ", f" 'cider-eval-defun-at-point)
            (lispy-define-key lispy-mode-map "v" 'evil-scroll-line-to-center)
            ;; originally M-n, which clashes with Spacemacs
            (define-key lispy-mode-map (kbd "M-n") 'lispy-mark-symbol)))

  (evil-define-key 'normal lispy-mode-map
    (kbd "[") 'andre/lispy-backward-and-go-to-insert-mode
    (kbd "]") 'andre/lispy-forward-and-go-to-insert-mode)

  ;; from https://stackoverflow.com/questions/23378271/how-do-i-display-ansi-color-codes-in-emacs-for-any-mode


  ;; org-mode rich pasting (OSX only)
  ;; https://xiangji.me/2015/07/13/a-few-of-my-org-mode-customizations/
  ;; https://emacs.stackexchange.com/questions/12121/org-mode-parsing-rich-html-directly-when-pasting
  (defun andre/paste-html2org-clipboard ()
    "Convert clipboard contents from HTML to Org and then paste (yank)."
    (interactive)
    (kill-new (shell-command-to-string "osascript -e 'the clipboard as \"HTML\"' | perl -ne 'print chr foreach unpack(\"C*\",pack(\"H*\",substr($_,11,-3)))' | pandoc -f html -t json | pandoc -f json -t org --wrap=none"))
    (yank)
    ;; replace Unicode Character 'NO-BREAK SPACE'
    (save-excursion
      (goto-char 1)
      (while (re-search-forward "\u00A0" nil t)
        (replace-match " " nil nil))))

  ;; atomic-chrome - https://github.com/alpha22jp/atomic-chrome/blob/master/README.md
  (setq atomic-chrome-default-major-mode 'markdown-mode)
  (setq atomic-chrome-url-major-mode-alist '(("\\.cloud\\.databricks\\.com" . scala-mode)
                                             ("metabase.*\\.com" . sql-mode)
                                             ("github\\.com" . gfm-mode)))
  (atomic-chrome-start-server)

  (when (file-exists-p andre--workspaces-path)
    (load-file andre--workspaces-path))

  ;; ix (pastebin like service for sharing snippets of code)
  (defalias 'andre/pastebin-share-snippet 'ix)

  ;; org table
  ;; `org-table-create-or-convert-from-region` uses a different number of the
  ;; universal prefix for using different separator. Remembering that is just beyound human ability
  (defalias 'andre/create-org-table-using-space-separator '(lambda ()
                                                             (interactive)
                                                             (call-interactively 'org-table-create-or-convert-from-region)))

  (defalias 'andre/create-org-table-using-comma-separator '(lambda ()
                                                             (interactive)
                                                             (let ((current-prefix-arg '(4)))
                                                               (call-interactively 'org-table-create-or-convert-from-region))))

  (defalias 'andre/create-org-table-using-tab-separator '(lambda ()
                                                           (interactive)
                                                           (let ((current-prefix-arg '(16)))
                                                             (call-interactively 'org-table-create-or-convert-from-region))))


  (defalias 'andre/create-org-table-using-regex-separator '(lambda ()
                                                             (interactive)
                                                             (let ((current-prefix-arg '(64)))
                                                               (call-interactively 'org-table-create-or-convert-from-region))))

  ;; nu
  (when (file-directory-p "~/dev/nu/nudev/ides/emacs/")
    (add-to-load-path "~/dev/nu/nudev/ides/emacs/")
    (require 'nu))

  ;; dired keybinding
  (evil-define-key 'normal dired-mode-map
    (kbd "[") 'dired-up-directory)

  ;; ivy
  ;; requires lexical binding (set at the top of the file)
  (defun andre/counsel-rg-src ()
    (interactive)
    (let ((search-str (ivy--input)))
      ;; https://emacs.stackexchange.com/questions/20974/exit-minibuffer-and-execute-a-command-afterwards
      (ivy-quit-and-run
        (counsel-rg search-str (projectile-project-root) "--iglob '!test*' --iglob '!postman*'"))))

  (defun andre/counsel-rg-src-and-tests ()
    (interactive)
    (let ((search-str (ivy--input)))
      ;; https://emacs.stackexchange.com/questions/20974/exit-minibuffer-and-execute-a-command-afterwards
      (ivy-quit-and-run
        (counsel-rg search-str (projectile-project-root)))))

  (define-key ivy-minibuffer-map (kbd "C-s") #'andre/counsel-rg-src)
  (define-key ivy-minibuffer-map (kbd "C-t") #'andre/counsel-rg-src-and-tests)

  ;; projectile
  (with-eval-after-load 'projectile
    (projectile-register-project-type 'lein-test '("project.clj")
                                      :compile "lein compile"
                                      :test "lein nu-test :autotest"
                                      :run "lein run"
                                      :test-suffix "_test"))
  ;; default files
  (when (eq andre-type-env 'work-mac)
    (find-file "~/Dropbox/nu/org/todo-work.org")
    (find-file "~/Dropbox/nu/org/tech.org")
    (find-file "~/Dropbox/ciencia_da_computacao/datomic/datomic-notes.org")))

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (lispy hl-todo color-theme-sanityinc-tomorrow anti-zenburn-theme helm helm-core cider zenburn-theme zen-and-art-theme yasnippet-snippets xterm-color ws-butler worf winum white-sand-theme which-key wgrep web-mode web-beautify w32-browser volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit symon sx sunny-day-theme sublime-themes subatomic256-theme subatomic-theme string-inflection spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smex smeargle slime-company slim-mode shr-tag-pre-highlight shell-pop seti-theme sesman scss-mode sayid sass-mode reverse-theme reveal-in-osx-finder restart-emacs rebecca-theme rainbow-delimiters railscasts-theme queue purple-haze-theme pug-mode professional-theme plantuml-mode planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el password-generator paradox ox-epub ox-clip overseer osx-trash osx-dictionary orgit organic-green-theme org-variable-pitch org-trello org-projectile org-present org-pomodoro org-pdfview org-mime org-gcal org-download org-cliplink org-bullets org-brain org-beautify-theme open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme nov noctilux-theme neotree naquadah-theme nameless mvn mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme meghanada maven-test-mode material-theme markdown-toc majapahit-theme magithub magit-svn magit-gitflow magit-gh-pulls madhat2r-theme lush-theme lorem-ipsum livid-mode link-hint light-soap-theme launchctl kaolin-themes json-navigator json-mode js2-refactor js-doc jbeans-theme jazz-theme ix ivy-yasnippet ivy-xref ivy-rtags ivy-purpose ivy-hydra ir-black-theme insert-shebang inkpot-theme indent-guide impatient-mode hyperbole hungry-delete highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-make hc-zenburn-theme gruvbox-theme gruber-darker-theme groovy-mode groovy-imports grandshell-theme gradle-mode gotham-theme google-translate google-this google-c-style golden-ratio gnuplot gitignore-templates gitignore-mode github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md gandalf-theme fuzzy font-lock+ flyspell-popup flyspell-correct-ivy flycheck-rtags flycheck-pos-tip flycheck-bashate flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eziam-theme eyebrowse expand-region exotica-theme exec-path-from-shell eww-lnum evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-cleverparens evil-args evil-anzu espresso-theme eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks ensime emmet-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies editorconfig dumb-jump dracula-theme dotenv-mode doom-themes django-theme disaster diminish diff-hl deadgrep darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme csv-mode counsel-projectile counsel-css company-web company-tern company-statistics company-shell company-rtags company-emacs-eclim company-c-headers common-lisp-snippets column-enforce-mode color-theme-sanityinc-solarized clues-theme clojure-snippets clojure-cheatsheet clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu cherry-blossom-theme centered-cursor-mode busybee-theme bubbleberry-theme browse-at-remote birds-of-paradise-plus-theme beacon badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile atomic-chrome apropospriate-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme ace-window ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
