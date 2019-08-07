require 'benchmark'

module Benchmarks
  module ArrayConcat
   
    ARR = [1, 2, 3, 4, nil, 'apple', nil, true, false]

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('+') { 
          LOOP.times do 
            value = [] 
            value + ARR
          end
        }
        r.report('concat') { 
          LOOP.times do 
            value = [] 
            value.concat(ARR)
          end
        }
      end
    end
  end
end


