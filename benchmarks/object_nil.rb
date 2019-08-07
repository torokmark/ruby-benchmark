require 'benchmark'

module Benchmarks
  module ObjectNil

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('if nil else') {
          LOOP.times do      
            value = nil
            if value; else a = 'nil' end
          end
        }
        r.report('unless nil') {
          LOOP.times do      
            value = nil
            unless value; a = 'nil' end
          end
        }
        r.report('==') { 
          LOOP.times do 
            value = nil
            if value == nil; a = '==' end
          end
        }
        r.report('.nil?') { 
          LOOP.times do
            value = nil
            if value.nil?; a = '.nil?' end
          end
        }
      end
    end
  end
end


