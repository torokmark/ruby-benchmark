require 'benchmark'

module Benchmarks
  module ArrayFirstTakeSlice
   
    ARR = [1, 'apple', true, false, nil, 2]

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('[]') {
          LOOP.times do
            ARR[0..2]
          end
        }
        r.report('first') { 
          LOOP.times do 
            ARR.first(3)
          end
        }
        r.report('take') { 
          LOOP.times do 
            ARR.take(3)
          end
        }
        r.report('slice') {
          LOOP.times do
            ARR.slice(0..2)
          end
        }
      end
    end
  end
end


