;; C-hをバックスペースに
(keyboard-translate ?\C-h ?\C-?)

;; CommandキーをMetaに
(when (eq system-type 'darwin)
  (setq ns-command-modifier 'meta))

;; シンボリックリンクの読み込みを許可
(setq vc-follow-symlinks t)

;; シンボリックリンク先のVCS内で更新が入った場合にバッファを自動更新
(setq auto-revert-check-vc-info t)

;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; 対応するカッコを強調表示
(show-paren-mode t)

;; 時間も表示させる。
(display-time)

;; 行番号を常に表示させる
(global-linum-mode)
(setq linum-format "%4d ")

;; 現在行を目立たせる
;(setq hl-line-face 'underline)
;(global-hl-line-mode)

;; テーマを設定する
; (load-theme 'manoj-dark t)
