;; develop a grpgram that generates random sentences from a phrase-structure grammer.

(defun sentence ()
  (append (noun-phrase) (verb-phrase)))

(defun noun-phrase ()
  (append (Article) (Noun)))

(defun verb-phrase ()
  (append (Verb) (noun-phrase)))

(defun Article () (one-of '(the a)))
(defun Noun () (one-of '(man ball woman table)))
(defun Verb () (one-of '(hit took saw liked)))

(defun one-of (set)
  "pick on element of set, and make a list of it"
  (list (random-elt set)))

(defun random-elt (choices)
  "choose an element from a list at random"
  (elt choices (random (length choices))))



