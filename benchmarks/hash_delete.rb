require 'benchmark'


module Benchmarks
  module HashDelete

    COUNT = 10_000

    def self.start

      Benchmark.bm(WIDTH) do |r|
        r.report('delete'){
          COUNT.times do |i|
            hsh = {}
            1_000.times { |i| hsh[i] = rand(1_000) }
            hsh.delete(500)
          end
        }
        r.report('delete_if') { 
          COUNT.times do |i|
            hsh = {}
            1_000.times { |i| hsh[i] = rand(1_000) }
            hsh.delete_if { |k, v| k === 500 }
          end
        }
      end
    end

  end
end


