;;; This code was previously the emacsen-startup file for the
;;; yasnippet package.  Now that yasnippet uses dh_elpa, we ensure
;;; that this code is loaded using an autoload cookie

;;;###autoload
(with-eval-after-load 'yasnippet
  (yas--initialize)
  ;; Guard loading snippets directory because it lives in another package:
  (let ((snippets-directory "/usr/share/yasnippet-snippets"))
    (if (file-exists-p snippets-directory)
        (yas-load-directory "/usr/share/yasnippet-snippets"))))
