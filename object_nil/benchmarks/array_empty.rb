require 'benchmark'

module Benchmarks
  module ArrayEmpty 

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('==') {
          LOOP.times do      
            value = Array.new
            if value == []; a = '[]' end
          end
        }
        r.report('.empty?') { 
          LOOP.times do 
            value = Array.new
            if value.empty? ; a = '.empty?' end
          end
        }
      end
    end
  end
end


