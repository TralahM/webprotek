(defsystem "webprotek-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Tralah M Brian"
  :license ""
  :depends-on ("webprotek"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "webprotek"))))
  :description "Test system for webprotek"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
