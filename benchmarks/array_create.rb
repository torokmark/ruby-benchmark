require 'benchmark'


module Benchmarks
  module ArrayCreate

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('[]') { 
          LOOP.times do 
            value = []
          end
        }
        r.report('new') { 
          LOOP.times do 
            value = Array.new 
          end
        }
      end
    end
  end
end


