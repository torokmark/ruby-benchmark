require 'benchmark'


module Benchmarks
  module ArrayCreateWithValues

    # Based on https://stackoverflow.com/questions/11173173/create-array-of-n-items-based-on-integer-value/34258080#34258080
    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('[*..] ') { 
          [*1000000 .. 9999999]
        }

        r.report('(..).to_a') {
          (1000000 .. 9999999).to_a
        }

        r.report('Array(..)') {
          Array(1000000 .. 9999999)
        }

        r.report('Array.new(n, &:next)') {
          Array.new(8999999, &:next)
        }
      end
    end
  end
end
