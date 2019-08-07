require 'benchmark'

module Benchmarks
  module IntegerIncrease

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('.next') {
          LOOP.times do      
            value = 0 
            value.next
          end
        }
        r.report('+=') { 
          LOOP.times do 
            value = 0 
            value += 1
          end
        }
        r.report('= +') { 
          LOOP.times do
            value = 0 
            value = value + 1
          end
        }
      end
    end
  end
end


