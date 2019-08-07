require 'benchmark'

module Benchmarks
  module ArrayLengthSize
   
    ARR = [1, 'apple', true, false, nil, 2]

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('size') {
          LOOP.times do
            ARR.size
          end
        }
        r.report('length') { 
          LOOP.times do 
            ARR.length
          end
        }
      end
    end
  end
end


