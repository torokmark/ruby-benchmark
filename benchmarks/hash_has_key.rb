require 'benchmark'


module Benchmarks
  module HashHasKey

    def self.start
      hsh = {}
      10_000.times { |i| hsh[i] = rand(1_000) }

      Benchmark.bm(WIDTH) do |r|
        r.report('size'){
          LOOP.times do
            hsh.size 
          end
        }
        r.report('length'){
          LOOP.times do
            hsh.length 
          end
        }
      end
    end

  end
end


