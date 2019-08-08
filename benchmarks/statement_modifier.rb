require 'benchmark'

module Benchmarks
  module StatementModifier
 
    ARR = Array.new(5_000_000) { rand(1_000) } 

    def self.start
      Benchmark.bm(WIDTH) do |r|
        sorted = ARR.sort
        r.report('if ...') { 
          a = 0
          sorted.each do |i|
            if i > 500
              a += 1
            end
          end
        }
        r.report('... if') { 
          a = 0
          sorted.each do |i|
            a += 1 if i > 500
          end
        }
        r.report('unless ...') {
          a = 0
          sorted.each do |i|
            unless i <= 500
              a += 1 
            end
          end
        }
        r.report('... unless') {
          a = 0
          sorted.each do |i|
            a += 1 unless i <= 500
          end
        }
      end
    end
  
  end
end


