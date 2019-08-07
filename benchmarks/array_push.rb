require 'benchmark'


module Benchmarks
  module ArrayPush

    ITEM = 'apple'

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('push') { 
          LOOP.times do 
            value = [] 
            value.push(ITEM)
          end
        }
        r.report('append') { 
          LOOP.times do 
            value = [] 
            value.append(ITEM)
          end
        }
        r.report('<<') { 
          LOOP.times do 
            value = []
            value << ITEM
         end
        }
      end
    end
  end
end


