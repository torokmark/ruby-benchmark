require 'benchmark'

module Benchmarks
  module StringCreate
    COUNT = 10_000

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('string literal') {
          LOOP.times do
            a = '' 
          end
        }
        r.report('new') {
          LOOP.times do
            a = String.new
          end
        }
        r.report('new + string lit') {
          LOOP.times do
            a = String.new('')
          end
        }
      end
    end

  end
end


