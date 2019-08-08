require 'benchmark'

module Benchmarks
  module ArrayBranchPrediction
   
    ARR = Array.new(5_000_000) { rand(1_000) } 

    def self.start
      Benchmark.bm(WIDTH) do |r|
        sorted = ARR.sort
        r.report('sorted') { 
          a = 0
          sorted.each do |i|
            if i > 500
              a += 1
            end
          end
        }
        r.report('unsorted') { 
          a = 0
          ARR.each do |i|
            if i > 500
              a += 1
            end
          end
        }
      end
    end
  end
end


