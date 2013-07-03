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

;; Colors from BIC website.
(let ((class '((class color) (min-colors 89)))
      (white "whitesmoke")
      (red "#d71c22")
      (blue "#006bb7")
      (orange "#f9a01b")
      (turquoise "#00b9f1")
      (purple "#972a7d")
      (brown "burlywood4")
      (black "black")
      (green "#00a77e"))

  (custom-theme-set-faces
   'bic-velleda

   `(cursor ((,class (:background ,green))))
   `(default ((,class (:background ,white :foreground ,black))))

   ;; Highlighting
   `(fringe ((,class (:background ,white))))
   `(highlight ((,class (:background ,turquoise))))
   `(region ((,class (:background ,turquoise))))
   `(warning ((,class (:foreground ,purple :weight bold))))
   `(error ((,class (:foreground ,red :weight bold))))
   `(show-paren-match-face ((,class (:background ,turquoise :foreground ,white))))
   `(show-paren-mismatch-face ((,class (:background ,red :foreground ,white))))
   `(isearch ((,class (:background ,red :foreground ,white))))
   `(lazy-highlight ((,class (:background ,turquoise :foreground ,white))))
   `(link ((,class (:foreground ,blue))))
   `(link-visited ((,class (:foreground ,purple))))

   ;; Modeline
   `(mode-line ((,class (:background "gray75" :foreground ,black))))
   `(mode-line-buffer-id ((,class (:weight bold :foreground ,black))))
   `(mode-line-inactive ((,class (:background "gray40" :foreground "black"))))

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
   `(gnus-group-news-low ((,class (:foreground ,blue))))
   `(gnus-group-mail-news-empty ((,class (:foreground ,turquoise :strike-through t))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,turquoise))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,turquoise))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,turquoise))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,turquoise))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,turquoise))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,turquoise))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,turquoise :strike-through t))))
   `(gnus-header-content ((,class (:foreground ,green))))
   `(gnus-header-from ((,class (:foreground ,red))))
   `(gnus-header-subject ((,class (:foreground ,blue))))
   `(gnus-header-name ((,class (:foreground ,brown))))
   `(gnus-header-newsgroups ((,class (:foreground ,purple))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,blue))))
   `(gnus-summary-normal-read ((,class (:foreground ,brown))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,red))))
   `(gnus-summary-normal-undownloaded ((,class (:foreground ,black :strike-through t))))
   `(gnus-summary-high-ancient ((,class (:inherit gnus-summary-normal-ancient :weight bold))))
   `(gnus-summary-high-read ((,class (:inherit gnus-summary-normal-read :weight bold))))
   `(gnus-summary-high-ticked ((,class (:inherit gnus-summary-normal-ticked :weight bold))))
   `(gnus-summary-high-undownloaded ((,class (:inherit gnus-summary-normal-undownloaded :weight bold))))
   `(gnus-summary-low-ancient ((,class (:inherit gnus-summary-normal-ancient :slant italic))))
   `(gnus-summary-low-read ((,class (:inherit gnus-summary-normal-read :slant italic))))
   `(gnus-summary-low-ticked ((,class (:inherit gnus-summary-normal-ticked :slant italic))))
   `(gnus-summary-low-undownloaded ((,class (:inherit gnus-summary-normal-undownloaded :slant italic))))
   `(gnus-summary-cancelled ((,class (:foreground ,orange :background ,black))))
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
   `(mm-uu-extract ((,class (:foreground ,black :background ,green))))

   ;; Message
   ;; `(message-header-name ((,class (:foreground ,gg))))
   ;; `(message-header-cc ((,class (:foreground ,gg))))
   ;; `(message-header-other ((,class (:foreground ,gg))))
   ;; `(message-header-subject ((,class (:foreground ,gg))))
   ;; `(message-header-to ((,class (:weight bold :foreground ,gg))))
   ;; `(message-header-xheader ((,class (:foreground ,gg))))
   ;; `(message-header-newsgroups ((,class (:weight bold :foreground ,ig))))
   ;; `(message-cited-text ((,class (:slant italic :foreground ,gg))))
   ;; `(message-mml ((,class (:foreground ,hg))))
   ;; `(message-separator ((,class (:weight bold :foreground ,gg))))
   ))

(provide-theme 'bic-velleda)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; bic-velleda-theme.el ends here
