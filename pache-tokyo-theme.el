;;; pache-tokyo-theme.el --- A high-contrast tokyo-night theme for Emacs adapted from Gruber Darker -*- lexical-binding: t -*-

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
;;; Code:

(deftheme pache-tokyo
  "Pache Tokyo theme for Emacs.")

;; Colors with +x are lighter. Colors with -x are darker.
(let ((pache-tokyo-fg        "#a9b1d6")
      (pache-tokyo-fg+1      "#c0caf5")
      (pache-tokyo-fg+2      "#d7daff")
      (pache-tokyo-white     "#ffffff")
      (pache-tokyo-black     "#000000")
      (pache-tokyo-bg-1      "#1a1b26")
      (pache-tokyo-bg        "#0a0a0d")
      (pache-tokyo-bg+1      "#292e42")
      (pache-tokyo-bg+2      "#3b4261")
      (pache-tokyo-bg+3      "#434c5e")
      (pache-tokyo-bg+4      "#4f5773")
      (pache-tokyo-red-1     "#9d4747")
      (pache-tokyo-red       "#f7768e")
      (pache-tokyo-red+1     "#ff8ba7")
      (pache-tokyo-green     "#9ece6a")
      (pache-tokyo-yellow    "#e0af68")
      (pache-tokyo-brown     "#a35f00")
      (pache-tokyo-quartz    "#9aa5ce")
      (pache-tokyo-niagara-2 "#0f111a")
      (pache-tokyo-niagara-1 "#33467c")
      (pache-tokyo-niagara   "#7aa2f7")
      (pache-tokyo-wisteria  "#bb9af7"))
  (custom-theme-set-variables
   'pache-tokyo
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'pache-tokyo

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,pache-tokyo-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,pache-tokyo-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,pache-tokyo-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground pache-tokyo-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,pache-tokyo-green))))
   `(agda2-highlight-number-face ((t (:foreground ,pache-tokyo-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,pache-tokyo-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,pache-tokyo-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,pache-tokyo-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground pache-tokyo-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,pache-tokyo-niagara))))
   `(font-latex-string-face ((t (:foreground ,pache-tokyo-green))))
   `(font-latex-warning-face ((t (:foreground ,pache-tokyo-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background pache-tokyo-bg-1
                       :foreground pache-tokyo-bg+2))))
   `(cursor ((t (:background ,pache-tokyo-yellow))))
   `(default ((t ,(list :foreground pache-tokyo-fg
                        :background pache-tokyo-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground pache-tokyo-bg+2))))
   `(vertical-border ((t ,(list :foreground pache-tokyo-bg+2))))
   `(link ((t (:foreground ,pache-tokyo-niagara :underline t))))
   `(link-visited ((t (:foreground ,pache-tokyo-wisteria :underline t))))
   `(match ((t (:background ,pache-tokyo-bg+4))))
   `(shadow ((t (:foreground ,pache-tokyo-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,pache-tokyo-niagara))))
   `(region ((t (:background ,pache-tokyo-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background pache-tokyo-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground pache-tokyo-black
                                    :background pache-tokyo-red))))
   `(tooltip ((t ,(list :background pache-tokyo-bg+4
                        :foreground pache-tokyo-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,pache-tokyo-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground pache-tokyo-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground pache-tokyo-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,pache-tokyo-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground pache-tokyo-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground pache-tokyo-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,pache-tokyo-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground pache-tokyo-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground pache-tokyo-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,pache-tokyo-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground pache-tokyo-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,pache-tokyo-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,pache-tokyo-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,pache-tokyo-yellow))))
   `(egg-branch-mono ((t (:foreground ,pache-tokyo-yellow))))
   `(egg-diff-add ((t (:foreground ,pache-tokyo-green))))
   `(egg-diff-del ((t (:foreground ,pache-tokyo-red))))
   `(egg-diff-file-header ((t (:foreground ,pache-tokyo-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,pache-tokyo-yellow))))
   `(egg-help-header-2 ((t (:foreground ,pache-tokyo-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,pache-tokyo-fg)))))
   `(egg-reflog-mono ((t (:foreground ,pache-tokyo-niagara-1))))
   `(egg-section-title ((t (:foreground ,pache-tokyo-yellow))))
   `(egg-text-base ((t (:foreground ,pache-tokyo-fg))))
   `(egg-term ((t (:foreground ,pache-tokyo-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,pache-tokyo-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,pache-tokyo-green))))
   `(erc-input-face ((t (:foreground ,pache-tokyo-red+1))))
   `(erc-my-nick-face ((t (:foreground ,pache-tokyo-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,pache-tokyo-quartz))))
   `(eshell-ls-directory ((t (:foreground ,pache-tokyo-niagara))))
   `(eshell-ls-executable ((t (:foreground ,pache-tokyo-green))))
   `(eshell-ls-symlink ((t (:foreground ,pache-tokyo-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,pache-tokyo-yellow))))
   `(font-lock-comment-face ((t (:foreground ,pache-tokyo-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,pache-tokyo-brown))))
   `(font-lock-constant-face ((t (:foreground ,pache-tokyo-quartz))))
   `(font-lock-doc-face ((t (:foreground ,pache-tokyo-green))))
   `(font-lock-doc-string-face ((t (:foreground ,pache-tokyo-green))))
   `(font-lock-function-name-face ((t (:foreground ,pache-tokyo-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,pache-tokyo-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,pache-tokyo-quartz))))
   `(font-lock-reference-face ((t (:foreground ,pache-tokyo-quartz))))
   `(font-lock-string-face ((t (:foreground ,pache-tokyo-green))))
   `(font-lock-type-face ((t (:foreground ,pache-tokyo-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,pache-tokyo-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,pache-tokyo-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-tokyo-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,pache-tokyo-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-tokyo-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,pache-tokyo-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-tokyo-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,pache-tokyo-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-tokyo-red) :inherit unspecified))
      (t (:foreground ,pache-tokyo-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,pache-tokyo-yellow) :inherit unspecified))
      (t (:foreground ,pache-tokyo-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background pache-tokyo-bg+2
                                      :foreground pache-tokyo-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground pache-tokyo-niagara
                                  :background pache-tokyo-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,pache-tokyo-green))))
   `(helm-ff-file ((t (:foreground ,pache-tokyo-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground pache-tokyo-bg
                                        :background pache-tokyo-red))))
   `(helm-ff-symlink ((t (:foreground ,pache-tokyo-yellow :bold t))))
   `(helm-selection-line ((t (:background ,pache-tokyo-bg+1))))
   `(helm-selection ((t (:background ,pache-tokyo-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground pache-tokyo-yellow
                                   :background pache-tokyo-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,pache-tokyo-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,pache-tokyo-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,pache-tokyo-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,pache-tokyo-niagara))))
   `(info-visited ((t (:foreground ,pache-tokyo-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground pache-tokyo-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,pache-tokyo-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,pache-tokyo-green))))
   `(jabber-rare-time-face ((t (:foreground ,pache-tokyo-green))))
   `(jabber-roster-user-online ((t (:foreground ,pache-tokyo-green))))
   `(jabber-activity-face ((t (:foreground ,pache-tokyo-red))))
   `(jabber-activity-personal-face ((t (:foreground ,pache-tokyo-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,pache-tokyo-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background pache-tokyo-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,pache-tokyo-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,pache-tokyo-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground pache-tokyo-quartz
                      :background pache-tokyo-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,pache-tokyo-niagara))))
   `(magit-diff-hunk-header ((t (:background ,pache-tokyo-bg+2))))
   `(magit-diff-file-header ((t (:background ,pache-tokyo-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,pache-tokyo-red+1))))
   `(magit-log-author ((t (:foreground ,pache-tokyo-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground pache-tokyo-green
                                            :background pache-tokyo-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground pache-tokyo-niagara
                                           :background pache-tokyo-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground pache-tokyo-yellow
                                          :background pache-tokyo-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground pache-tokyo-fg
                                          :background pache-tokyo-bg+1))))
   `(magit-item-highlight ((t (:background ,pache-tokyo-bg+1))))
   `(magit-tag ((t ,(list :foreground pache-tokyo-yellow
                          :background pache-tokyo-bg))))
   `(magit-blame-heading ((t ,(list :background pache-tokyo-bg+1
                                    :foreground pache-tokyo-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,pache-tokyo-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background pache-tokyo-bg+1
                          :foreground pache-tokyo-white))))
   `(mode-line-buffer-id ((t ,(list :background pache-tokyo-bg+1
                                    :foreground pache-tokyo-white))))
   `(mode-line-inactive ((t ,(list :background pache-tokyo-bg+1
                                   :foreground pache-tokyo-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,pache-tokyo-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,pache-tokyo-niagara))))
   `(org-column ((t (:background ,pache-tokyo-bg-1))))
   `(org-column-title ((t (:background ,pache-tokyo-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,pache-tokyo-green))))
   `(org-todo ((t (:foreground ,pache-tokyo-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,pache-tokyo-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground pache-tokyo-black
                        :background pache-tokyo-fg+2))))
   `(isearch-fail ((t ,(list :foreground pache-tokyo-black
                             :background pache-tokyo-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground pache-tokyo-fg+1
                                       :background pache-tokyo-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,pache-tokyo-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,pache-tokyo-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,pache-tokyo-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,pache-tokyo-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,pache-tokyo-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground pache-tokyo-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,pache-tokyo-fg))))
   `(speedbar-highlight-face ((t (:background ,pache-tokyo-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,pache-tokyo-red))))
   `(speedbar-tag-face ((t (:foreground ,pache-tokyo-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,pache-tokyo-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background pache-tokyo-bg
                                 :foreground pache-tokyo-bg+1))))
   `(whitespace-tab ((t ,(list :background pache-tokyo-bg
                               :foreground pache-tokyo-bg+1))))
   `(whitespace-hspace ((t ,(list :background pache-tokyo-bg
                                  :foreground pache-tokyo-bg+2))))
   `(whitespace-line ((t ,(list :background pache-tokyo-bg+2
                                :foreground pache-tokyo-red+1))))
   `(whitespace-newline ((t ,(list :background pache-tokyo-bg
                                   :foreground pache-tokyo-bg+2))))
   `(whitespace-trailing ((t ,(list :background pache-tokyo-red
                                    :foreground pache-tokyo-red))))
   `(whitespace-empty ((t ,(list :background pache-tokyo-yellow
                                 :foreground pache-tokyo-yellow))))
   `(whitespace-indentation ((t ,(list :background pache-tokyo-yellow
                                       :foreground pache-tokyo-red))))
   `(whitespace-space-after-tab ((t ,(list :background pache-tokyo-yellow
                                           :foreground pache-tokyo-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background pache-tokyo-brown
                                            :foreground pache-tokyo-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,pache-tokyo-bg+1 :foreground ,pache-tokyo-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,pache-tokyo-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,pache-tokyo-bg+3 :background ,pache-tokyo-bg+4))))
   `(term-color-red ((t (:foreground ,pache-tokyo-red-1 :background ,pache-tokyo-red-1))))
   `(term-color-green ((t (:foreground ,pache-tokyo-green :background ,pache-tokyo-green))))
   `(term-color-blue ((t (:foreground ,pache-tokyo-niagara :background ,pache-tokyo-niagara))))
   `(term-color-yellow ((t (:foreground ,pache-tokyo-yellow :background ,pache-tokyo-yellow))))
   `(term-color-magenta ((t (:foreground ,pache-tokyo-wisteria :background ,pache-tokyo-wisteria))))
   `(term-color-cyan ((t (:foreground ,pache-tokyo-quartz :background ,pache-tokyo-quartz))))
   `(term-color-white ((t (:foreground ,pache-tokyo-fg :background ,pache-tokyo-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,pache-tokyo-fg :background ,pache-tokyo-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,pache-tokyo-brown :background ,pache-tokyo-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,pache-tokyo-brown :background ,pache-tokyo-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,pache-tokyo-fg :background ,pache-tokyo-bg-1))))
   `(company-tooltip-mouse ((t (:background ,pache-tokyo-bg-1))))
   `(company-tooltip-common ((t (:foreground ,pache-tokyo-green))))
   `(company-tooltip-common-selection ((t (:foreground ,pache-tokyo-green))))
   `(company-scrollbar-fg ((t (:background ,pache-tokyo-bg-1))))
   `(company-scrollbar-bg ((t (:background ,pache-tokyo-bg+2))))
   `(company-preview ((t (:background ,pache-tokyo-green))))
   `(company-preview-common ((t (:foreground ,pache-tokyo-green :background ,pache-tokyo-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,pache-tokyo-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,pache-tokyo-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,pache-tokyo-green))))
   `(orderless-match-face-2 ((t (:foreground ,pache-tokyo-brown))))
   `(orderless-match-face-3 ((t (:foreground ,pache-tokyo-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'pache-tokyo)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; pache-tokyo-theme.el ends here.

(provide 'pache-tokyo-theme)
;;; pache-tokyo-theme.el ends here
