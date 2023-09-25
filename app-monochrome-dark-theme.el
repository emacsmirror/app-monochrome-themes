;;; app-monochrome-dark-theme.el --- a low contrast monochromatic theme that emphasises shapes rather than colours.

;; Author: Aleksandr Petrosyan <appetrosyan3@gmail.com>
;; URL: https://github.com/Greybeard-Entertainment/app-monochrome
;; Version: 0.0.1

;;; Blurb:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A monochromatic theme that emphasises shapes over colours.

;; The human eye has a ton more rods than cones, and in low-light
;; conditions one finds shapes more easily than colours.  It is the
;; basis of this theme.

;; Rather than have the effective equivalent of a circus on your
;; screen, it is instead the intention of this package to provide you
;; with a well-shaped buffer that has an occasional splash of colour
;; to highlight the important aspects that cannot be highlighted
;; otherwise.

;; This package depends on the following freely available, fonts:
;; - IBM Plex <https://github.com/IBM/plex> (OFL-1.1)
;; - Ubuntu Mono (Ligatured) <https://github.com/canonical/UbuntuMono-fonts> (UFL-1.0 GPL-compatible)
;; - Victor Mono (Ligatured) <https://github.com/rubjo/victor-mono> (OFL-1.1)
;; - Linux Libertine <https://libertine-fonts.org/> (OFL-1.1 or GPLv3)
;; - Fira Code <https://github.com/tonsky/FiraCode> (OFL-1.1)


;; The best way to install these fonts is via the package manager, but
;; downloading those fonts and installing them on a per-user or
;; system-wide basis is also an option.

;; The fonts were specifically chosen in order to facilitate usage
;; with other packages.  I highly recommend using this in tandem with
;; `rainbow-delimiters' and `rainbow-mode' or
;; `color-identifiers-mode'.  The main idea is that the font shapes
;; and shades of luminosity convey that syntactic roles, if they
;; weren't obvious before.  At the same time, the colour are used to
;; emphasise the delimiters, and identifiers.  The faces used for
;; those packages are not yet included in this package.


;;; Code:

(deftheme app-monochrome-dark
  "A mononcrhomatic white text on grey background theme with emphasis on shapes rather than colours.")

(custom-theme-set-faces
 'app-monochrome-dark
 '(counsel-key-binding ((t (:foreground "peru"))))
 '(font-lock-keyword-face ((t (:weight bold :family "Ubuntu Mono Ligaturized"))))
 '(font-lock-negation-char-face ((t (:weight bold))))
 '(font-lock-doc-face ((t (:slant italic :inherit font-lock-string-face))))
 '(font-lock-string-face ((t (:foreground "grey62" :family "IBM Plex Mono"))))
 '(flyspell-incorrect ((t (:background "light gray" :foreground "red4"))))
 '(font-lock-constant-face ((t (:foreground "white" :weight bold :family "Victor Mono"))))
 '(font-lock-variable-name-face ((t (:foreground "white" :weight thin))))
 '(font-lock-type-face ((t (:weight bold :family "Victor Mono"))))
 '(font-lock-builtin-face ((t (:family "Linux Libertine Mono" :background "grey16"))))
 '(lsp-face-semhl-function ((t (:inherit (font-lock-function-name-face)))))
 '(font-lock-function-name-face ((t (:slant italic :family "IBM Plex Mono"))))
 '(lsp-face-highlight-textual ((t (:inherit (highlight)))))
 '(highlight ((t (:background "#440000"))))
 '(lsp-face-highlight-write ((t (:weight bold :inherit (highlight)))))
 '(lsp-face-semhl-type ((t (:inherit (font-lock-type-face)))))
 '(lsp-face-semhl-implementation ((t (:weight bold :inherit (font-lock-function-name-face)))))
 '(font-lock-comment-face ((t (:foreground "grey55"))))
 '(font-lock-doc-markup-face ((t (:inherit (font-lock-constant-face)))))
 '(ivy-cursor ((((class color) (background light)) (:foreground "white" :background "black")) (((class color) (background dark)) (:foreground "black" :background "white"))))
 '(counsel-outline-1 ((t (:inherit (org-level-1)))))
 '(counsel-application-name ((t (:inherit (font-lock-builtin-face)))))
 '(counsel-active-mode ((t (:inherit (font-lock-builtin-face)))))
 '(swiper-background-match-face-1 ((t (:inherit (swiper-match-face-1)))))
 '(swiper-match-face-1 ((t (:inherit (lazy-highlight)))))
 '(lazy-highlight ((t (:distant-foreground "white" :box (:line-width (2 . 2) :color "grey75" :style released-button)))))
 '(swiper-background-match-face-3 ((t (:inherit (swiper-match-face-3)))))
 '(swiper-line-face ((t (:inherit highlight :box (:line-width (2 . 2) :color "grey75" :style released-button)))))
 '(lsp-ui-doc-highlight-hover ((t (:inherit highlight))))
 '(lsp-ui-doc-background ((t (:background "gray30"))))
 '(lsp-ui-sideline-global ((t nil)))
 '(lsp-ui-sideline-symbol ((t (:height 0.99 :box (:line-width (1 . -1) :color "grey" :style nil) :foreground "grey"))))
 '(error ((t (:foreground "Red" :weight bold))))
 '(warning ((t (:foreground "peru"))))
 '(flycheck-fringe-warning ((t (:inherit (warning)))))
 '(flycheck-info ((t (:inherit success :underline t))))
 '(success ((t (:foreground "peru" :weight bold))))
 '(doom-modeline-lsp-success ((t (:inherit nil :weight bold))))
 '(lsp-ui-peek-list ((((background light)) (:background "light gray")) (t (:background "#181818"))))
 '(lsp-ui-peek-line-number ((t (:foreground "grey25"))))
 '(bookmark-face ((t (:background "Black" :foreground "Gold"))))
 '(ivy-match-required-face ((t (:foreground "red" :inherit (minibuffer-prompt)))))
 '(ivy-virtual ((t (:inherit (font-lock-builtin-face)))))
 '(ivy-action ((t (:inherit (font-lock-builtin-face)))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:foreground "lightskyblue1" :background "magenta3")) (((class color) (min-colors 88) (background dark)) (:foreground "brown4" :background "palevioletred2")) (((class color) (min-colors 16)) (:foreground "cyan1" :background "magenta4")) (((class color) (min-colors 8)) (:foreground "cyan1" :background "magenta4")) (t (:inverse-video t))))
 '(org-list-dt ((t (:bold t))))
 '(compilation-line-number ((t (:inherit (font-lock-keyword-face)))))
 '(doom-modeline-buffer-file ((t (:inherit (mode-line-buffer-id bold)))))
 '(counsel-variable-documentation ((t (:inherit (font-lock-comment-face)))))
 '(ivy-prompt-match ((t (:inherit (ivy-current-match)))))
 '(minibuffer-prompt ((t (:foreground "#4c9c9c" :weight bold))))
 '(ivy-grep-line-number ((t (:inherit (compilation-line-number)))))
 '(sp-show-pair-match-content-face ((t nil)))
 '(show-paren-match ((t (:background "red4"))))
 '(show-paren-mismatch ((t (:inherit show-paren-match :inverse-video t))))
 '(variable-pitch ((t (:family "IBM Plex Serif"))))
 '(magit-filename ((t (:weight normal))))
 '(magit-keyword-squash ((t (:inherit (font-lock-warning-face)))))
 '(magit-blame-name ((t nil)))
 '(magit-diff-base-highlight ((((class color) (background light)) (:foreground "#aaaa11" :background "#eeeebb" :extend t)) (((class color) (background dark)) (:foreground "#eeeebb" :background "#666622" :extend t))))
 '(magit-keyword ((t (:inherit (font-lock-string-face)))))
 '(magit-tag ((t (:foreground "grey77"))))
 '(magit-branch-upstream ((t (:slant italic))))
 '(magit-branch-remote ((t (:foreground "white" :weight bold :height 1.25 :family "IBM Plex Serif"))))
 '(magit-branch-local ((t (:weight bold :height 1.25 :family "IBM Plex Serif"))))
 '(magit-branch-current ((t (:box (:line-width (1 . 1) :color nil :style nil) :inherit (magit-branch-local)))))
 '(magit-section-heading-selection ((t (:extend t :weight bold :height 1.25))))
 '(magit-section-secondary-heading ((t (:weight bold :extend t))))
 '(magit-section-heading ((t (:extend t :weight bold :height 2.0 :family "FoglihtenPCS"))))
 '(magit-section-highlight ((((class color) (background light)) (:background "grey95" :extend t)) (((class color) (background dark)) (:background "grey20" :extend t))))
 '(magit-section-child-count ((t nil)))
 '(magit-diff-file-heading ((t (:extend t :weight bold :family "IBM Plex Serif"))))
 '(custom-link ((t (:inherit link :box (:line-width (2 . 2) :color "grey75" :style released-button)))))
 '(org-default ((t (:inherit (default)))))
 '(link ((t (:underline t :foreground "#5cacac"))))
 '(tree-sitter-hl-face:constructor ((t (:inherit tree-sitter-hl-face:constant))))
 '(tree-sitter-hl-face:property.definition ((t (:inherit (tree-sitter-hl-face:variable.parameter)))))
 '(tree-sitter-hl-face:number ((t (:inherit (tree-sitter-hl-face:constant)))))
 '(tree-sitter-hl-face:method ((t (:inherit (tree-sitter-hl-face:function)))))
 '(tree-sitter-hl-face:function.call ((t (:inherit font-lock-function-name-face))))
 '(tree-sitter-hl-face:operator ((t (:inherit (tree-sitter-hl-face:keyword)))))
 '(tree-sitter-hl-face:type ((t (:inherit font-lock-type-face))))
 '(tree-sitter-hl-face:label ((t (:inherit (font-lock-preprocessor-face)))))
 '(tree-sitter-hl-face:function ((t (:inherit (font-lock-function-name-face)))))
 '(tree-sitter-hl-face:type.builtin ((t (:inherit (font-lock-builtin-face)))))
 '(tree-sitter-hl-face:method.call ((t (:inherit (tree-sitter-hl-face:function.call)))))
 '(tree-sitter-hl-face:variable.parameter ((t (:inherit (tree-sitter-hl-face:variable)))))
 '(tree-sitter-hl-face:function.special ((t (:inherit (font-lock-preprocessor-face)))))
 '(tree-sitter-hl-face:doc ((t (:inherit (font-lock-doc-face)))))
 '(tree-sitter-hl-face:embedded ((t (:inherit (default)))))
 '(tree-sitter-hl-face:variable ((t (:inherit (font-lock-variable-name-face)))))
 '(tree-sitter-hl-face:variable.special ((t (:inherit (font-lock-warning-face)))))
 '(tree-sitter-hl-face:variable.builtin ((t (:inherit (font-lock-builtin-face)))))
 '(tree-sitter-hl-face:constant ((t (:inherit font-lock-constant-face))))
 '(tree-sitter-hl-face:escape ((t (:inherit (font-lock-keyword-face)))))
 '(tree-sitter-hl-face:punctuation.delimiter ((t (:inherit (tree-sitter-hl-face:punctuation)))))
 '(tree-sitter-hl-face:string.special ((t (:weight bold :inherit (tree-sitter-hl-face:string)))))
 '(tree-sitter-hl-face:punctuation ((t (:inherit (default)))))
 '(tree-sitter-hl-face:constant.builtin ((t (:inherit (font-lock-builtin-face)))))
 '(tree-sitter-hl-face:type.parameter ((t (:inherit (font-lock-variable-name-face font-lock-type-face) :slant italic :weight bold))))
 '(tree-sitter-hl-face:type.super ((t (:inherit (tree-sitter-hl-face:type)))))
 '(tree-sitter-hl-face:type.argument ((t (:inherit (tree-sitter-hl-face:type)))))
 '(tree-sitter-hl-face:property ((t (:inherit nil :slant italic))))
 '(tree-sitter-hl-face:attribute ((t (:inherit nil))))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(markdown-header-face-1 ((t (:height 1.5 :inherit markdown-header-face))))
 '(markdown-header-face ((t (:weight bold :inherit magit-section-heading))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.25))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.0))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 0.75))))
 '(lsp-rust-analyzer-inlay-param-face ((t (:inherit (lsp-rust-analyzer-inlay-face)))))
 '(lsp-rust-analyzer-inlay-type-face ((t (:inherit (lsp-rust-analyzer-inlay-face)))))
 '(lsp-rust-analyzer-inlay-face ((t (:inherit font-lock-comment-face :foreground "black" :background "white"))))
 '(default ((t (:inherit nil :extend nil :stipple nil :background "grey24" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 98 :width normal :foundry "CTDB" :family "Fira Code"))))
 '(solaire-default-face ((t (:inherit default) :background "grey16")))
 )

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))


(provide-theme 'app-monochrome-dark)
;;; app-monochrome-dark-theme.el ends here