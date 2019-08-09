require 'benchmark'


module Benchmarks
  module HashSize

    def self.start
      hsh = {}
      10_000.times { |i| hsh[i] = rand(1_000) }
      key = 4567

      Benchmark.bm(WIDTH) do |r|
        r.report('[]'){
          LOOP.times do
            hsh[key]
          end
        }
        r.report('fetch'){
          LOOP.times do
            hsh.fetch(key)
          end
        }
        r.report('dig') { 
          LOOP.times do
            hsh.dig(key)
          end
        }
      end
    end

  end
end


