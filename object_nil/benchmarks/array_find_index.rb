require 'benchmark'

module Benchmarks
  module ArrayFindIndex
   
    ARR = [1, 'apple', true, false, nil, 2]

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('find_index') {
          LOOP.times do
            ARR.find_index(true)
          end
        }
        r.report('index') { 
          LOOP.times do 
            ARR.index(true)
          end
        }
      end
    end
  end
end


