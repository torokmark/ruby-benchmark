require 'benchmark'


module Benchmarks
  module HashAdd

    COUNT = 1_000_000

    def self.start

      Benchmark.bm(WIDTH) do |r|
        r.report('[]'){
          hsh = {}
          COUNT.times do |i|
            hsh[i * 2] = i.to_s
          end
        }
        r.report('store') { 
          hsh = {}
          COUNT.times do |i|
            hsh.store(i * 2, i.to_s)
          end
        }
        r.report('merge') { 
          hsh = {}
          COUNT.times do |i|
            hsh.merge!({ i * 2 => i.to_s})
          end
        }
      end
    end

  end
end


