require 'benchmark'


module Benchmarks
  module HashCreate

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('{}') { 
          LOOP.times do 
            value = {}
          end
        }
        r.report('new') { 
          LOOP.times do 
            value = Hash.new 
          end
        }
      end
    end
  end
end


