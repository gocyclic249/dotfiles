;;; helm-firefox-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-firefox" "helm-firefox.el" (23151 37190
;;;;;;  75705 2000))
;;; Generated autoloads from helm-firefox.el

(autoload 'helm-firefox-bookmarks "helm-firefox" "\
Preconfigured `helm' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open \"about:config\" in firefox and double click on this line to enable value
to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse your bookmarks.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-firefox-autoloads.el ends here
