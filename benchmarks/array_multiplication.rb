require 'benchmark'

module Benchmarks
  module ArrayMultiplication
   
    ARR = [1]

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('*') { 
          ARR * LOOP 
        }
        r.report('concat') { 
          res = []
          LOOP.times do
            res.concat(ARR)
          end
        }
        r.report('push') {
          res = []
          LOOP.times do
            res.push(*ARR)  
          end
        }
        r.report('flattern') {
          res = []
          LOOP.times do
            res << ARR  
          end
          res.flatten
        }

      end
    end
  end
end


