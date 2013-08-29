#lang racket

;; API to extract standards/objectives/evidence data from spreadsheet

(require (planet neil/csv:1:=7)) ; csv library

(provide get-standard-descr
         get-learnobj-tree
         )

;; location of the standards csv file (must be a path)
(define STDS-CSV-FILE "standards.csv")

;;;;; STANDARDS TREE DATA DEFN ;;;;;;;;;;;;;;;;;;;;;;;;;

;; (make-standard string string list[learnobj])
(define-struct standard (tag descr learnobjs))
;; (make-learnobj (number string list[evidstmt])
(define-struct learnobj (id descr evidence))
;; (make-evidstmt (number string))
(define-struct evidstmt (id descr))

;; the standardslist is a list of standards

;;;;; CSV TO STANDARDS TREE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (read-csv filename)
  (call-with-input-file filename
    (lambda (p)
      (csv->list (make-csv-reader p '((separator-chars #\,)))))))

(define csv-raw (read-csv STDS-CSV-FILE))

(define (cluster-lines-by-standard csvlist)
  (let loop ([unprocessed csvlist] [currstd empty] [finishedstds empty])
    (if (empty? unprocessed) ;; include currstd in finishedstds list
        (append finishedstds (list currstd))
        (cond [(string=? "" (caar unprocessed)) ;; line still part of currstd
               (loop (rest unprocessed) 
                     (append currstd (list (first unprocessed))) 
                     finishedstds)]
              [else ;; current line starts a new standard; archive previous and start new one
               (loop (rest unprocessed) 
                     (list (first unprocessed))
                     (if (empty? currstd) ;; base-case -- processing first standard 
                         empty
                         (append finishedstds (list currstd))))]))))

;; converts the csv contents (as a list) into a tree of standards,
;;   learning objectives, and evidence statements.  Need to refine
;;   once KF and ES agree on the spreadsheet format
(define (csvlist-to-standards-tree csvlist)
  (let ([clusters (cluster-lines-by-standard csvlist)])
    (map (lambda (cluster)
           (make-standard (caar cluster) (cadar cluster) 
                          (list (make-learnobj "dummy" "missing"
                                               (map (lambda (evstr) (make-evidstmt "dummy" evstr))
                                                    (map third cluster))))))
         clusters)))

;; use rest to strip out the header line on the spreadsheet
(define standards-tree (csvlist-to-standards-tree (rest csv-raw)))  

;;;;; EXTRACT DATA FROM TREE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (find-std/tag tag)
  (let ([matches (filter (lambda (std) (string=? tag (standard-tag std))) 
                         standards-tree)])
    (if (empty? matches)
        (error 'find-std/tag (format "No standard for tag ~a" tag))
        (first matches))))

;; given a standard id-tag, extract the description string for that id
(define (get-standard-descr tag) 
  (standard-descr (find-std/tag tag)))

;; given standard id-tag, produce list of ((lobj (evidence ...)) ...) for that standard
(define (get-learnobj-tree std-tag)
  (let ([lobjs (standard-learnobjs (find-std/tag std-tag))])
    (map (lambda (lobj)
           (list (learnobj-descr lobj)
                 (map evidstmt-descr (learnobj-evidence lobj))))
         lobjs)))

;;;;; ATTIC ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; convert master spreadsheet to csv
;(system (format "cscript xls2csv.vbs ~a ~a" MASTER-SPREADSHEET MASTER-CSV))
;(define MASTER-CSVLIST (make-parameter #f))