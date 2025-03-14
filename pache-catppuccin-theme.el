;;; pache-catppuccin-theme.el --- A high-contrast Catppuccin theme for Emacs adapted from Gruber Darker -*- lexical-binding: t -*-

;; Copyright (C) 2025 Henrique Marques
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Henrique Marques <hm2030master@proton.me>
;; URL: https://github.com/0xhenrique/pache-dark-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;; Gruber Darker color theme for Emacs by Jason Blevins. A darker
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme, extended by Alexey Kutepov a.k.a. rexim and extended by Henrique Marques.
;;
;;; Code:

(deftheme pache-catppuccin
  "Pache Catppuccin theme for Emacs.")

;; Colors with +x are lighter. Colors with -x are darker.
(let ((pache-catppuccin-fg        "#f4dbd6")
      (pache-catppuccin-fg+1      "#f5e0dc")
      (pache-catppuccin-fg+2      "#f8e8e4")
      (pache-catppuccin-white     "#ffffff")
      (pache-catppuccin-black     "#000000")
      (pache-catppuccin-bg-1      "#0f0f17")
      (pache-catppuccin-bg        "#0a0a0d")
      (pache-catppuccin-bg+1      "#2c2c3c")
      (pache-catppuccin-bg+2      "#393948")
      (pache-catppuccin-bg+3      "#45475a")
      (pache-catppuccin-bg+4      "#585b70")
      (pache-catppuccin-red-1     "#b43c3c")
      (pache-catppuccin-red       "#f38ba8")
      (pache-catppuccin-red+1     "#f28fad")
      (pache-catppuccin-green     "#a6e3a1")
      (pache-catppuccin-yellow    "#f9e2af")
      (pache-catppuccin-brown     "#d5a950")
      (pache-catppuccin-quartz    "#c6a0f6")
      (pache-catppuccin-niagara-2 "#232136")
      (pache-catppuccin-niagara-1 "#494d64")
      (pache-catppuccin-niagara   "#89b4fa")
      (pache-catppuccin-wisteria  "#cba6f7"))
  (custom-theme-set-variables
   'pache-catppuccin
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'pache-catppuccin

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,pache-catppuccin-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,pache-catppuccin-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,pache-catppuccin-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground pache-catppuccin-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,pache-catppuccin-green))))
   `(agda2-highlight-number-face ((t (:foreground ,pache-catppuccin-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,pache-catppuccin-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,pache-catppuccin-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,pache-catppuccin-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground pache-catppuccin-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,pache-catppuccin-niagara))))
   `(font-latex-string-face ((t (:foreground ,pache-catppuccin-green))))
   `(font-latex-warning-face ((t (:foreground ,pache-catppuccin-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background pache-catppuccin-bg-1
                       :foreground pache-catppuccin-bg+2))))
   `(cursor ((t (:background ,pache-catppuccin-yellow))))
   `(default ((t ,(list :foreground pache-catppuccin-fg
                        :background pache-catppuccin-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground pache-catppuccin-bg+2))))
   `(vertical-border ((t ,(list :foreground pache-catppuccin-bg+2))))
   `(link ((t (:foreground ,pache-catppuccin-niagara :underline t))))
   `(link-visited ((t (:foreground ,pache-catppuccin-wisteria :underline t))))
   `(match ((t (:background ,pache-catppuccin-bg+4))))
   `(shadow ((t (:foreground ,pache-catppuccin-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,pache-catppuccin-niagara))))
   `(region ((t (:background ,pache-catppuccin-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background pache-catppuccin-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground pache-catppuccin-black
                                    :background pache-catppuccin-red))))
   `(tooltip ((t ,(list :background pache-catppuccin-bg+4
                        :foreground pache-catppuccin-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,pache-catppuccin-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground pache-catppuccin-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground pache-catppuccin-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,pache-catppuccin-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground pache-catppuccin-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground pache-catppuccin-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,pache-catppuccin-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground pache-catppuccin-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground pache-catppuccin-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,pache-catppuccin-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground pache-catppuccin-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,pache-catppuccin-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,pache-catppuccin-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,pache-catppuccin-yellow))))
   `(egg-branch-mono ((t (:foreground ,pache-catppuccin-yellow))))
   `(egg-diff-add ((t (:foreground ,pache-catppuccin-green))))
   `(egg-diff-del ((t (:foreground ,pache-catppuccin-red))))
   `(egg-diff-file-header ((t (:foreground ,pache-catppuccin-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,pache-catppuccin-yellow))))
   `(egg-help-header-2 ((t (:foreground ,pache-catppuccin-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,pache-catppuccin-fg)))))
   `(egg-reflog-mono ((t (:foreground ,pache-catppuccin-niagara-1))))
   `(egg-section-title ((t (:foreground ,pache-catppuccin-yellow))))
   `(egg-text-base ((t (:foreground ,pache-catppuccin-fg))))
   `(egg-term ((t (:foreground ,pache-catppuccin-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,pache-catppuccin-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,pache-catppuccin-green))))
   `(erc-input-face ((t (:foreground ,pache-catppuccin-red+1))))
   `(erc-my-nick-face ((t (:foreground ,pache-catppuccin-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,pache-catppuccin-quartz))))
   `(eshell-ls-directory ((t (:foreground ,pache-catppuccin-niagara))))
   `(eshell-ls-executable ((t (:foreground ,pache-catppuccin-green))))
   `(eshell-ls-symlink ((t (:foreground ,pache-catppuccin-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,pache-catppuccin-yellow))))
   `(font-lock-comment-face ((t (:foreground ,pache-catppuccin-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,pache-catppuccin-brown))))
   `(font-lock-constant-face ((t (:foreground ,pache-catppuccin-quartz))))
   `(font-lock-doc-face ((t (:foreground ,pache-catppuccin-green))))
   `(font-lock-doc-string-face ((t (:foreground ,pache-catppuccin-green))))
   `(font-lock-function-name-face ((t (:foreground ,pache-catppuccin-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,pache-catppuccin-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,pache-catppuccin-quartz))))
   `(font-lock-reference-face ((t (:foreground ,pache-catppuccin-quartz))))
   `(font-lock-string-face ((t (:foreground ,pache-catppuccin-green))))
   `(font-lock-type-face ((t (:foreground ,pache-catppuccin-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,pache-catppuccin-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,pache-catppuccin-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-catppuccin-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,pache-catppuccin-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-catppuccin-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,pache-catppuccin-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-catppuccin-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,pache-catppuccin-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-catppuccin-red) :inherit unspecified))
      (t (:foreground ,pache-catppuccin-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-catppuccin-yellow) :inherit unspecified))
      (t (:foreground ,pache-catppuccin-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background pache-catppuccin-bg+2
                                      :foreground pache-catppuccin-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground pache-catppuccin-niagara
                                  :background pache-catppuccin-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,pache-catppuccin-green))))
   `(helm-ff-file ((t (:foreground ,pache-catppuccin-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground pache-catppuccin-bg
                                        :background pache-catppuccin-red))))
   `(helm-ff-symlink ((t (:foreground ,pache-catppuccin-yellow :bold t))))
   `(helm-selection-line ((t (:background ,pache-catppuccin-bg+1))))
   `(helm-selection ((t (:background ,pache-catppuccin-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground pache-catppuccin-yellow
                                   :background pache-catppuccin-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,pache-catppuccin-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,pache-catppuccin-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,pache-catppuccin-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,pache-catppuccin-niagara))))
   `(info-visited ((t (:foreground ,pache-catppuccin-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground pache-catppuccin-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,pache-catppuccin-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,pache-catppuccin-green))))
   `(jabber-rare-time-face ((t (:foreground ,pache-catppuccin-green))))
   `(jabber-roster-user-online ((t (:foreground ,pache-catppuccin-green))))
   `(jabber-activity-face ((t (:foreground ,pache-catppuccin-red))))
   `(jabber-activity-personal-face ((t (:foreground ,pache-catppuccin-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,pache-catppuccin-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background pache-catppuccin-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,pache-catppuccin-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,pache-catppuccin-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground pache-catppuccin-quartz
                      :background pache-catppuccin-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,pache-catppuccin-niagara))))
   `(magit-diff-hunk-header ((t (:background ,pache-catppuccin-bg+2))))
   `(magit-diff-file-header ((t (:background ,pache-catppuccin-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,pache-catppuccin-red+1))))
   `(magit-log-author ((t (:foreground ,pache-catppuccin-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground pache-catppuccin-green
                                            :background pache-catppuccin-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground pache-catppuccin-niagara
                                           :background pache-catppuccin-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground pache-catppuccin-yellow
                                          :background pache-catppuccin-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground pache-catppuccin-fg
                                          :background pache-catppuccin-bg+1))))
   `(magit-item-highlight ((t (:background ,pache-catppuccin-bg+1))))
   `(magit-tag ((t ,(list :foreground pache-catppuccin-yellow
                          :background pache-catppuccin-bg))))
   `(magit-blame-heading ((t ,(list :background pache-catppuccin-bg+1
                                    :foreground pache-catppuccin-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,pache-catppuccin-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background pache-catppuccin-bg+1
                          :foreground pache-catppuccin-white))))
   `(mode-line-buffer-id ((t ,(list :background pache-catppuccin-bg+1
                                    :foreground pache-catppuccin-white))))
   `(mode-line-inactive ((t ,(list :background pache-catppuccin-bg+1
                                   :foreground pache-catppuccin-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,pache-catppuccin-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,pache-catppuccin-niagara))))
   `(org-column ((t (:background ,pache-catppuccin-bg-1))))
   `(org-column-title ((t (:background ,pache-catppuccin-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,pache-catppuccin-green))))
   `(org-todo ((t (:foreground ,pache-catppuccin-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,pache-catppuccin-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground pache-catppuccin-black
                        :background pache-catppuccin-fg+2))))
   `(isearch-fail ((t ,(list :foreground pache-catppuccin-black
                             :background pache-catppuccin-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground pache-catppuccin-fg+1
                                       :background pache-catppuccin-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,pache-catppuccin-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,pache-catppuccin-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,pache-catppuccin-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,pache-catppuccin-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,pache-catppuccin-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground pache-catppuccin-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,pache-catppuccin-fg))))
   `(speedbar-highlight-face ((t (:background ,pache-catppuccin-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,pache-catppuccin-red))))
   `(speedbar-tag-face ((t (:foreground ,pache-catppuccin-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,pache-catppuccin-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background pache-catppuccin-bg
                                 :foreground pache-catppuccin-bg+1))))
   `(whitespace-tab ((t ,(list :background pache-catppuccin-bg
                               :foreground pache-catppuccin-bg+1))))
   `(whitespace-hspace ((t ,(list :background pache-catppuccin-bg
                                  :foreground pache-catppuccin-bg+2))))
   `(whitespace-line ((t ,(list :background pache-catppuccin-bg+2
                                :foreground pache-catppuccin-red+1))))
   `(whitespace-newline ((t ,(list :background pache-catppuccin-bg
                                   :foreground pache-catppuccin-bg+2))))
   `(whitespace-trailing ((t ,(list :background pache-catppuccin-red
                                    :foreground pache-catppuccin-red))))
   `(whitespace-empty ((t ,(list :background pache-catppuccin-yellow
                                 :foreground pache-catppuccin-yellow))))
   `(whitespace-indentation ((t ,(list :background pache-catppuccin-yellow
                                       :foreground pache-catppuccin-red))))
   `(whitespace-space-after-tab ((t ,(list :background pache-catppuccin-yellow
                                           :foreground pache-catppuccin-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background pache-catppuccin-brown
                                            :foreground pache-catppuccin-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,pache-catppuccin-bg+1 :foreground ,pache-catppuccin-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,pache-catppuccin-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,pache-catppuccin-bg+3 :background ,pache-catppuccin-bg+4))))
   `(term-color-red ((t (:foreground ,pache-catppuccin-red-1 :background ,pache-catppuccin-red-1))))
   `(term-color-green ((t (:foreground ,pache-catppuccin-green :background ,pache-catppuccin-green))))
   `(term-color-blue ((t (:foreground ,pache-catppuccin-niagara :background ,pache-catppuccin-niagara))))
   `(term-color-yellow ((t (:foreground ,pache-catppuccin-yellow :background ,pache-catppuccin-yellow))))
   `(term-color-magenta ((t (:foreground ,pache-catppuccin-wisteria :background ,pache-catppuccin-wisteria))))
   `(term-color-cyan ((t (:foreground ,pache-catppuccin-quartz :background ,pache-catppuccin-quartz))))
   `(term-color-white ((t (:foreground ,pache-catppuccin-fg :background ,pache-catppuccin-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,pache-catppuccin-fg :background ,pache-catppuccin-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,pache-catppuccin-brown :background ,pache-catppuccin-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,pache-catppuccin-brown :background ,pache-catppuccin-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,pache-catppuccin-fg :background ,pache-catppuccin-bg-1))))
   `(company-tooltip-mouse ((t (:background ,pache-catppuccin-bg-1))))
   `(company-tooltip-common ((t (:foreground ,pache-catppuccin-green))))
   `(company-tooltip-common-selection ((t (:foreground ,pache-catppuccin-green))))
   `(company-scrollbar-fg ((t (:background ,pache-catppuccin-bg-1))))
   `(company-scrollbar-bg ((t (:background ,pache-catppuccin-bg+2))))
   `(company-preview ((t (:background ,pache-catppuccin-green))))
   `(company-preview-common ((t (:foreground ,pache-catppuccin-green :background ,pache-catppuccin-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,pache-catppuccin-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,pache-catppuccin-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,pache-catppuccin-green))))
   `(orderless-match-face-2 ((t (:foreground ,pache-catppuccin-brown))))
   `(orderless-match-face-3 ((t (:foreground ,pache-catppuccin-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'pache-catppuccin)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; pache-catppuccin-theme.el ends here.

(provide 'pache-catppuccin-theme)
;;; pache-catppuccin-theme.el ends here
