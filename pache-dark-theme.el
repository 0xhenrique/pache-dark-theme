;;; pache-dark-theme.el --- High-contrast theme based on Gruvbox -*- lexical-binding: t -*-

;; Copyright (C) 2025 Henrique Marques
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Henrique Marques <hm2030master@proton.me>
;; URL: https://github.com/0xhenrique/pache-dark-theme
;; Version: 0.1
;; Package-Requires: ((emacs "24.1"))
;; SPDX-License-Identifier: GPL-3.0-or-later

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
;; This theme adapts the Gruber Darker from Alexey Kutepov a.k.a. rexim
;; which is an adaptation of the Jason Blevins' theme.
;;
;;; Code:

(deftheme pache-dark
  "Pache Dark theme for Emacs.")

;; Colors with +x are lighter. Colors with -x are darker.
(let ((pache-dark-fg        "#f2e5bc")
      (pache-dark-fg+1      "#f9f5d7")
      (pache-dark-fg+2      "#fbf1c7")
      (pache-dark-white     "#ffffff")
      (pache-dark-black     "#000000")
      (pache-dark-bg-1      "#151819")
      (pache-dark-bg        "#000000")
      (pache-dark-bg+1      "#282828")
      (pache-dark-bg+2      "#3c3836")
      (pache-dark-bg+3      "#504945")
      (pache-dark-bg+4      "#665c54")
      (pache-dark-red-1     "#af1d1a")
      (pache-dark-red       "#fb4934")
      (pache-dark-red+1     "#fe8019")
      (pache-dark-green     "#a9b665")
      (pache-dark-yellow    "#fabd2f")
      (pache-dark-brown     "#665c54")
      (pache-dark-quartz    "#a89984")
      (pache-dark-niagara-2 "#2a2827")
      (pache-dark-niagara-1 "#504945")
      (pache-dark-niagara   "#83a598")
      (pache-dark-wisteria  "#d3869b"))
  (custom-theme-set-variables
   'pache-dark
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'pache-dark

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,pache-dark-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,pache-dark-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,pache-dark-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground pache-dark-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,pache-dark-green))))
   `(agda2-highlight-number-face ((t (:foreground ,pache-dark-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,pache-dark-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,pache-dark-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,pache-dark-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground pache-dark-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,pache-dark-niagara))))
   `(font-latex-string-face ((t (:foreground ,pache-dark-green))))
   `(font-latex-warning-face ((t (:foreground ,pache-dark-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background pache-dark-bg-1
                       :foreground pache-dark-bg+2))))
   `(cursor ((t (:background ,pache-dark-yellow))))
   `(default ((t ,(list :foreground pache-dark-fg+1
                        :background pache-dark-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground pache-dark-bg+2))))
   `(vertical-border ((t ,(list :foreground pache-dark-bg+2))))
   `(link ((t (:foreground ,pache-dark-niagara :underline t))))
   `(link-visited ((t (:foreground ,pache-dark-wisteria :underline t))))
   `(match ((t (:background ,pache-dark-bg+4))))
   `(shadow ((t (:foreground ,pache-dark-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,pache-dark-niagara))))
   `(region ((t (:background ,pache-dark-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background pache-dark-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground pache-dark-black
                                    :background pache-dark-red))))
   `(tooltip ((t ,(list :background pache-dark-bg+4
                        :foreground pache-dark-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,pache-dark-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground pache-dark-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground pache-dark-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,pache-dark-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground pache-dark-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground pache-dark-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,pache-dark-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground pache-dark-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground pache-dark-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,pache-dark-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground pache-dark-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,pache-dark-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,pache-dark-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,pache-dark-yellow))))
   `(egg-branch-mono ((t (:foreground ,pache-dark-yellow))))
   `(egg-diff-add ((t (:foreground ,pache-dark-green))))
   `(egg-diff-del ((t (:foreground ,pache-dark-red))))
   `(egg-diff-file-header ((t (:foreground ,pache-dark-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,pache-dark-yellow))))
   `(egg-help-header-2 ((t (:foreground ,pache-dark-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,pache-dark-fg)))))
   `(egg-reflog-mono ((t (:foreground ,pache-dark-niagara-1))))
   `(egg-section-title ((t (:foreground ,pache-dark-yellow))))
   `(egg-text-base ((t (:foreground ,pache-dark-fg))))
   `(egg-term ((t (:foreground ,pache-dark-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,pache-dark-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,pache-dark-green))))
   `(erc-input-face ((t (:foreground ,pache-dark-red+1))))
   `(erc-my-nick-face ((t (:foreground ,pache-dark-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,pache-dark-quartz))))
   `(eshell-ls-directory ((t (:foreground ,pache-dark-niagara))))
   `(eshell-ls-executable ((t (:foreground ,pache-dark-green))))
   `(eshell-ls-symlink ((t (:foreground ,pache-dark-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,pache-dark-yellow))))
   `(font-lock-comment-face ((t (:foreground ,pache-dark-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,pache-dark-brown))))
   `(font-lock-constant-face ((t (:foreground ,pache-dark-quartz))))
   `(font-lock-doc-face ((t (:foreground ,pache-dark-green))))
   `(font-lock-doc-string-face ((t (:foreground ,pache-dark-green))))
   `(font-lock-function-name-face ((t (:foreground ,pache-dark-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,pache-dark-red :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,pache-dark-quartz))))
   `(font-lock-reference-face ((t (:foreground ,pache-dark-quartz))))
   `(font-lock-string-face ((t (:foreground ,pache-dark-green))))
   `(font-lock-type-face ((t (:foreground ,pache-dark-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,pache-dark-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,pache-dark-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-dark-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,pache-dark-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-dark-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,pache-dark-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-dark-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,pache-dark-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-dark-red) :inherit unspecified))
      (t (:foreground ,pache-dark-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-dark-yellow) :inherit unspecified))
      (t (:foreground ,pache-dark-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background pache-dark-bg+2
                                      :foreground pache-dark-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground pache-dark-niagara
                                  :background pache-dark-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,pache-dark-green))))
   `(helm-ff-file ((t (:foreground ,pache-dark-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground pache-dark-bg
                                        :background pache-dark-red))))
   `(helm-ff-symlink ((t (:foreground ,pache-dark-yellow :bold t))))
   `(helm-selection-line ((t (:background ,pache-dark-bg+1))))
   `(helm-selection ((t (:background ,pache-dark-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground pache-dark-yellow
                                   :background pache-dark-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,pache-dark-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,pache-dark-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,pache-dark-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,pache-dark-niagara))))
   `(info-visited ((t (:foreground ,pache-dark-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground pache-dark-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,pache-dark-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,pache-dark-green))))
   `(jabber-rare-time-face ((t (:foreground ,pache-dark-green))))
   `(jabber-roster-user-online ((t (:foreground ,pache-dark-green))))
   `(jabber-activity-face ((t (:foreground ,pache-dark-red))))
   `(jabber-activity-personal-face ((t (:foreground ,pache-dark-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,pache-dark-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background pache-dark-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,pache-dark-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,pache-dark-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground pache-dark-quartz
                      :background pache-dark-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,pache-dark-niagara))))
   `(magit-diff-hunk-header ((t (:background ,pache-dark-bg+2))))
   `(magit-diff-file-header ((t (:background ,pache-dark-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,pache-dark-red+1))))
   `(magit-log-author ((t (:foreground ,pache-dark-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground pache-dark-green
                                            :background pache-dark-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground pache-dark-niagara
                                           :background pache-dark-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground pache-dark-yellow
                                          :background pache-dark-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground pache-dark-fg
                                          :background pache-dark-bg+1))))
   `(magit-item-highlight ((t (:background ,pache-dark-bg+1))))
   `(magit-tag ((t ,(list :foreground pache-dark-yellow
                          :background pache-dark-bg))))
   `(magit-blame-heading ((t ,(list :background pache-dark-bg+1
                                    :foreground pache-dark-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,pache-dark-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background pache-dark-bg+1
                          :foreground pache-dark-white))))
   `(mode-line-buffer-id ((t ,(list :background pache-dark-bg+1
                                    :foreground pache-dark-white))))
   `(mode-line-inactive ((t ,(list :background pache-dark-bg+1
                                   :foreground pache-dark-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,pache-dark-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,pache-dark-niagara))))
   `(org-column ((t (:background ,pache-dark-bg-1))))
   `(org-column-title ((t (:background ,pache-dark-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,pache-dark-green))))
   `(org-todo ((t (:foreground ,pache-dark-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,pache-dark-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground pache-dark-black
                        :background pache-dark-fg+2))))
   `(isearch-fail ((t ,(list :foreground pache-dark-black
                             :background pache-dark-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground pache-dark-fg+1
                                       :background pache-dark-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,pache-dark-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,pache-dark-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,pache-dark-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,pache-dark-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,pache-dark-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground pache-dark-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,pache-dark-fg))))
   `(speedbar-highlight-face ((t (:background ,pache-dark-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,pache-dark-red))))
   `(speedbar-tag-face ((t (:foreground ,pache-dark-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,pache-dark-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background pache-dark-bg
                                 :foreground pache-dark-bg+1))))
   `(whitespace-tab ((t ,(list :background pache-dark-bg
                               :foreground pache-dark-bg+1))))
   `(whitespace-hspace ((t ,(list :background pache-dark-bg
                                  :foreground pache-dark-bg+2))))
   `(whitespace-line ((t ,(list :background pache-dark-bg+2
                                :foreground pache-dark-red+1))))
   `(whitespace-newline ((t ,(list :background pache-dark-bg
                                   :foreground pache-dark-bg+2))))
   `(whitespace-trailing ((t ,(list :background pache-dark-red
                                    :foreground pache-dark-red))))
   `(whitespace-empty ((t ,(list :background pache-dark-yellow
                                 :foreground pache-dark-yellow))))
   `(whitespace-indentation ((t ,(list :background pache-dark-yellow
                                       :foreground pache-dark-red))))
   `(whitespace-space-after-tab ((t ,(list :background pache-dark-yellow
                                           :foreground pache-dark-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background pache-dark-brown
                                            :foreground pache-dark-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,pache-dark-bg+1 :foreground ,pache-dark-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,pache-dark-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,pache-dark-bg+3 :background ,pache-dark-bg+4))))
   `(term-color-red ((t (:foreground ,pache-dark-red-1 :background ,pache-dark-red-1))))
   `(term-color-green ((t (:foreground ,pache-dark-green :background ,pache-dark-green))))
   `(term-color-blue ((t (:foreground ,pache-dark-niagara :background ,pache-dark-niagara))))
   `(term-color-yellow ((t (:foreground ,pache-dark-yellow :background ,pache-dark-yellow))))
   `(term-color-magenta ((t (:foreground ,pache-dark-wisteria :background ,pache-dark-wisteria))))
   `(term-color-cyan ((t (:foreground ,pache-dark-quartz :background ,pache-dark-quartz))))
   `(term-color-white ((t (:foreground ,pache-dark-fg :background ,pache-dark-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,pache-dark-fg :background ,pache-dark-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,pache-dark-brown :background ,pache-dark-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,pache-dark-brown :background ,pache-dark-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,pache-dark-fg :background ,pache-dark-bg-1))))
   `(company-tooltip-mouse ((t (:background ,pache-dark-bg-1))))
   `(company-tooltip-common ((t (:foreground ,pache-dark-green))))
   `(company-tooltip-common-selection ((t (:foreground ,pache-dark-green))))
   `(company-scrollbar-fg ((t (:background ,pache-dark-bg-1))))
   `(company-scrollbar-bg ((t (:background ,pache-dark-bg+2))))
   `(company-preview ((t (:background ,pache-dark-green))))
   `(company-preview-common ((t (:foreground ,pache-dark-green :background ,pache-dark-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,pache-dark-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,pache-dark-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,pache-dark-green))))
   `(orderless-match-face-2 ((t (:foreground ,pache-dark-brown))))
   `(orderless-match-face-3 ((t (:foreground ,pache-dark-quartz))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'pache-dark)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; pache-dark-theme.el ends here.
