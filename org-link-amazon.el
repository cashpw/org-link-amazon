;;; org-link-amazon.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Cash Weaver
;;
;; Author: Cash Weaver <cashbweaver@gmail.com>
;; Maintainer: Cash Weaver <cashbweaver@gmail.com>
;; Created: March 13, 2022
;; Modified: March 13, 2022
;; Version: 0.0.1
;; Homepage: https://github.com/cashweaver/org-link-amazon
;; Package-Requires: ((emacs "27.1"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  This library provides an amazon link in org-mode.
;;
;;; Code:

(defcustom org-link-amazon-name
  "amazon"
  "Link name."
  :group 'org-link-amazon
  :type 'string
  :safe #'stringp)

(defcustom org-link-amazon-url-base
  "https://amazon.com/dp"
  "The URL of amazon."
  :group 'org-link-amazon
  :type 'string
  :safe #'stringp)

(org-link-set-parameters
 "amazon"
 :follow (org-link-base-open-fn-builder org-link-amazon-url-base)
 :export (org-link-base-export-fn-builder org-link-amazon-url-base))


(provide 'org-link-amazon)
;;; org-link-stackoverflow.el ends here
