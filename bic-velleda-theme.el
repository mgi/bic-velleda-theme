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
   `(warning ((,class (:foreground ,red :weight bold))))
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
   `(outline-5 ((,class (:foreground ,purple))))))

(provide-theme 'bic-velleda)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; bic-velleda-theme.el ends here
