;;; bic-velleda-theme.el --- Custom theme for faces

;; Copyright (C) 2011-2012 Free Software Foundation, Inc.

;; Author: Scott Frazer <frazer.scott@gmail.com>
;;         Manuel Giraud

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme bic-velleda
  "Face colors similar to markers on a whiteboard.")

(defun bic-velleda-set (fg bg ml-active ml-inactive)
  (let ((class '((class color) (min-colors 89)))
        (red "#d71c22")
        (blue "#006bb7")
        (orange "#f9a01b")
        (turquoise "#00b9f1")
        (purple "#972a7d")
        (brown "burlywood4")
        (green "#00a77e"))
    ;; Colors from the BIC website's CSS.

    (custom-theme-set-faces
     'bic-velleda

     `(cursor ((,class (:background ,green))))
     `(default ((,class (:background ,bg :foreground ,fg))))

     ;; Highlighting
     `(fringe ((,class (:background ,bg))))
     `(highlight ((,class (:background ,turquoise))))
     `(region ((,class (:background ,purple))))
     `(warning ((,class (:foreground ,purple :weight bold))))
     `(error ((,class (:foreground ,red :weight bold))))
     `(success ((,class (:foreground ,green :weight bold))))
     `(escape-glyph ((,class (:foreground ,brown))))
     `(shadow ((,class (:foreground ,brown))))
     `(show-paren-match-face ((,class (:background ,turquoise :foreground ,bg))))
     `(show-paren-mismatch-face ((,class (:background ,red :foreground ,bg))))
     `(isearch ((,class (:background ,orange :foreground ,bg))))
     `(isearch-fail ((,class (:background ,red))))
     `(lazy-highlight ((,class (:background ,turquoise :foreground ,bg))))
     `(link ((,class (:foreground ,blue))))
     `(link-visited ((,class (:foreground ,purple))))
     `(diary ((,class (:foreground ,red))))

     ;; Modeline
     `(mode-line ((,class (:background ,ml-active :foreground ,fg))))
     `(mode-line-buffer-id ((,class (:weight bold :foreground ,fg))))
     `(mode-line-inactive ((,class (:background ,ml-inactive :foreground ,fg))))

     ;; Font lock
     `(font-lock-builtin-face ((,class (:foreground ,orange))))
     `(font-lock-comment-face ((,class (:foreground ,brown))))
     `(font-lock-constant-face ((,class (:foreground ,green))))
     `(font-lock-function-name-face ((,class (:foreground ,orange :weight bold))))
     `(font-lock-keyword-face ((,class (:foreground ,turquoise))))
     `(font-lock-string-face ((,class (:foreground ,brown))))
     `(font-lock-type-face ((,class (:foreground ,blue))))
     `(font-lock-variable-name-face ((,class (:foreground ,green))))
     `(font-lock-warning-face ((,class (:foreground ,red))))

     ;; Info
     `(info-menu-header ((,class (:weight bold :height 1.1))))
     `(info-title-1 ((,class (:weight bold :height 1.8))))
     `(info-title-2 ((,class (:weight bold :height 1.44))))
     `(info-title-3 ((,class (:weight bold :height 1.2))))
     `(info-title-4 ((,class (:weight bold))))
     `(info-header-node ((,class (:foreground ,red))))
     `(info-header-xref ((,class (:foreground ,turquoise))))
     `(info-node ((,class (:foreground ,blue))))

     ;; Compilation
     `(compilation-column-number ((,class (:foreground ,turquoise))))
     `(compilation-error ((,class (:foreground ,red))))
     `(compilation-warning ((,class (:foreground ,orange))))
     `(compilation-info ((,class (:weight normal :foreground ,green))))
     `(compilation-line-number ((,class (:foreground ,turquoise))))

     ;; IDo
     `(ido-first-match ((,class (:foreground ,orange))))
     `(ido-only-match ((,class (:foreground ,green))))
     `(ido-subdir ((,class (:foreground ,blue))))

     ;; Minibuffer
     `(minibuffer-prompt ((,class (:foreground ,blue))))

     ;; Outline
     `(outline-1 ((,class (:foreground ,blue))))
     `(outline-2 ((,class (:foreground ,turquoise))))
     `(outline-3 ((,class (:foreground ,green))))
     `(outline-4 ((,class (:foreground ,red))))
     `(outline-5 ((,class (:foreground ,purple))))

     ;; Gnus
     `(gnus-server-agent ((,class (:weight bold :foreground ,turquoise))))
     `(gnus-server-closed ((,class (:foreground ,blue))))
     `(gnus-server-opened ((,class (:weight bold :foreground ,green))))
     `(gnus-server-denied ((,class (:weight bold :foreground ,red))))
     `(gnus-server-offline ((,class (:weight bold :foreground ,orange))))
     `(gnus-group-news-1 ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-1-empty ((,class (:foreground ,blue))))
     `(gnus-group-news-2 ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-2-empty ((,class (:foreground ,blue))))
     `(gnus-group-news-3 ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-3-empty ((,class (:foreground ,blue))))
     `(gnus-group-news-4 ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-4-empty ((,class (:foreground ,blue))))
     `(gnus-group-news-5 ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-5-empty ((,class (:foreground ,blue))))
     `(gnus-group-news-6 ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-6-empty ((,class (:foreground ,blue))))
     `(gnus-group-news-low ((,class (:weight bold :foreground ,blue))))
     `(gnus-group-news-low-empty ((,class (:foreground ,blue))))
     `(gnus-group-mail-news-empty ((,class (:foreground ,turquoise :strike-through t))))
     `(gnus-group-mail-1 ((,class (:weight bold :foreground ,turquoise))))
     `(gnus-group-mail-1-empty ((,class (:foreground ,turquoise))))
     `(gnus-group-mail-2 ((,class (:weight bold :foreground ,turquoise))))
     `(gnus-group-mail-2-empty ((,class (:foreground ,turquoise))))
     `(gnus-group-mail-3 ((,class (:weight bold :foreground ,turquoise))))
     `(gnus-group-mail-3-empty ((,class (:foreground ,turquoise))))
     `(gnus-group-mail-low ((,class (:weight bold :foreground ,turquoise))))
     `(gnus-group-mail-low-empty ((,class (:foreground ,turquoise :strike-through t))))
     `(gnus-header-content ((,class (:foreground ,green))))
     `(gnus-header-from ((,class (:foreground ,red))))
     `(gnus-header-subject ((,class (:foreground ,blue))))
     `(gnus-header-name ((,class (:foreground ,brown))))
     `(gnus-header-newsgroups ((,class (:foreground ,purple))))
     `(gnus-summary-normal-ancient ((,class (:foreground ,blue))))
     `(gnus-summary-normal-read ((,class (:foreground ,brown))))
     `(gnus-summary-normal-ticked ((,class (:foreground ,red))))
     `(gnus-summary-normal-undownloaded ((,class (:foreground ,fg :strike-through t))))
     `(gnus-summary-high-ancient ((,class (:inherit gnus-summary-normal-ancient :weight bold))))
     `(gnus-summary-high-read ((,class (:inherit gnus-summary-normal-read :weight bold))))
     `(gnus-summary-high-ticked ((,class (:inherit gnus-summary-normal-ticked :weight bold))))
     `(gnus-summary-high-undownloaded ((,class (:inherit gnus-summary-normal-undownloaded :weight bold))))
     `(gnus-summary-low-ancient ((,class (:inherit gnus-summary-normal-ancient :slant italic))))
     `(gnus-summary-low-read ((,class (:inherit gnus-summary-normal-read :slant italic))))
     `(gnus-summary-low-ticked ((,class (:inherit gnus-summary-normal-ticked :slant italic))))
     `(gnus-summary-low-undownloaded ((,class (:inherit gnus-summary-normal-undownloaded :slant italic))))
     `(gnus-summary-cancelled ((,class (:foreground ,orange :background ,fg))))
     `(gnus-cite-1 ((,class (:foreground ,blue))))
     `(gnus-cite-2 ((,class (:foreground ,red))))
     `(gnus-cite-3 ((,class (:foreground ,brown))))
     `(gnus-cite-4 ((,class (:foreground ,orange))))
     `(gnus-cite-5 ((,class (:foreground ,green))))
     `(gnus-cite-6 ((,class (:foreground ,purple))))
     `(gnus-cite-7 ((,class (:foreground ,turquoise))))
     `(gnus-cite-8 ((,class (:foreground ,blue))))
     `(gnus-cite-9 ((,class (:foreground ,red))))
     `(gnus-cite-10 ((,class (:foreground ,brown))))
     `(gnus-cite-11 ((,class (:foreground ,orange))))
     `(gnus-x-face ((,class (:foreground ,fg :background ,bg))))
     `(mm-uu-extract ((,class (:foreground ,fg :background ,green))))

     ;; Message
     `(message-header-name ((,class (:foreground ,brown))))
     `(message-header-cc ((,class (:foreground ,green))))
     `(message-header-other ((,class (:foreground ,brown))))
     `(message-header-subject ((,class (:foreground ,blue))))
     `(message-header-to ((,class (:weight bold :foreground ,red))))
     `(message-header-xheader ((,class (:foreground ,purple))))
     `(message-header-newsgroups ((,class (:weight bold :foreground ,purple))))
     `(message-separator ((,class (:foreground ,fg))))
     `(message-cited-text ((,class (:foreground ,brown))))
     `(message-mml ((,class (:foreground ,purple))))

     ;; Customize
     `(custom-variable-tag ((,class (:weight bold :foreground ,blue))))
     `(custom-group-tag ((,class (:height 1.2 :weight bold :foreground ,blue))))
     `(custom-state ((,class (:foreground ,green))))
     `(custom-button ((,class (:background ,ml-active :foreground ,fg :box (:line-width 2 :style released-button)))))
     `(custom-button-mouse ((,class (:background ,turquoise :foreground ,fg :box (:line-width 2 :style released-button)))))
     `(custom-button-pressed ((,class (:background ,ml-active :foreground ,fg :box (:line-width 2 :style pressed-button)))))

     ;; EShell
     `(eshell-prompt ((,class (:foreground ,red :bold t))))
     `(eshell-ls-directory ((,class (:inherit dired-directory))))
     `(eshell-ls-symlink ((,class (:inherit dired-symlink))))
     `(eshell-ls-archive ((,class (:foreground ,purple))))
     `(eshell-ls-backup ((,class (:foreground ,brown))))
     `(eshell-ls-clutter ((,class (:foreground ,brown))))
     `(eshell-ls-executable ((,class (:foreground ,green :weight bold))))
     `(eshell-ls-missing ((,class (:foreground ,red :weight bold))))
     `(eshell-ls-product ((,class (:foreground ,brown))))
     `(eshell-ls-readonly ((,class (:foreground ,blue))))
     `(eshell-ls-special ((,class (:foreground ,turquoise :weight bold))))

     ;; Org-mode
     `(org-hide ((,class (:foreground ,bg))))

     ;; w3m
     `(w3m-anchor ((,class (:inherit link))))
     `(w3m-arrived-anchor ((,class (:inherit link-visited))))
     `(w3m-form ((,class (:foreground ,turquoise :underline t))))
     `(w3m-header-line-location-title ((,class (:foreground ,blue))))
     `(w3m-header-line-location-content ((,class (:foreground ,green))))
     `(w3m-image-anchor ((,class)))
     `(w3m-image ((,class (:foreground ,green))))
     `(w3m-session-select ((,class (:foreground ,blue))))
     `(w3m-session-selected ((,class (:inherit w3m-session-select :underline t :weight bold))))
     `(w3m-tab-background ((,class (:background ,bg :foreground ,bg))))
     `(w3m-tab-selected-background ((,class (:background ,bg :foreground ,bg))))
     `(w3m-tab-mouse ((,class (:background ,ml-active :foreground ,bg))))
     `(w3m-tab-selected ((,class (:background ,ml-active :foreground ,fg :bold t))))
     `(w3m-tab-unselected ((,class (:background ,ml-inactive :foreground ,fg))))
     `(w3m-tab-selected-retrieving ((,class (:background ,ml-active :foreground ,red :bold t))))
     `(w3m-tab-unselected-retrieving ((,class (:background ,ml-inactive :foreground ,red))))
     `(w3m-tab-unselected-unseen ((,class (:background ,ml-inactive :foreground ,turquoise))))
     `(w3m-form-button ((,class (:inherit custom-button))))
     `(w3m-form-button-mouse ((,class (:inherit custom-button-mouse))))
     `(w3m-form-button-pressed ((,class (:inherit custom-button-pressed))))

     ;; Sh mode
     `(sh-heredoc ((,class (:foreground ,purple))))
     `(sh-quoted-exec ((,class (:inherit font-lock-string-face))))

     ;; Slime
     `(slime-repl-inputed-output-face ((,class (:foreground ,red))))
     `(slime-repl-output-face ((,class (:weight bold :foreground ,green))))

     ;; Mingus
     `(mingus-directory-face ((,class (:inherit dired-directory))))
     `(mingus-pausing-face ((,class (:foreground ,ml-active))))
     `(mingus-playing-face ((,class (:foreground ,green))))
     `(mingus-playlist-face ((,class (:foreground ,brown))))
     `(mingus-song-file-face ((,class (:foreground ,blue))))
     `(mingus-stopped-face ((,class (:foreground ,red)))))))

(defun bic-velleda-bright ()
  "Bright version of Bic Velleda theme."
  (interactive)
  (bic-velleda-set "black" "whitesmoke" "gray70" "gray40"))

(defun bic-velleda-dark ()
  "Dark version of Bic Velleda theme."
  (interactive)
  (bic-velleda-set "whitesmoke" "black" "gray40" "gray20"))

(defun bic-velleda-toggle ()
  "Toggle between bright/dark version of the theme."
  (interactive)
  (if (string= (face-attribute 'default :foreground) "black")
      (bic-velleda-dark)
    (bic-velleda-bright)))

(provide-theme 'bic-velleda)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; bic-velleda-theme.el ends here
