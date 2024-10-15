(ns test
  (:require ["../src/main" :as m]))

(println
 "Test result:"
 (= 4 (m/add 2 2)))
