require 'benchmark'


module Benchmarks
  module HashSelectSpecific

    COUNT = 100_000

    def self.start
      hsh = {}
      100.times { |i| hsh[i] = rand(1_000) }

      keys = hsh.select { |k, v| v < 500 }.keys

      Benchmark.bm(WIDTH) do |r|
        r.report('keep_if'){
          COUNT.times do |i|
            hsh.keep_if { |k, v| v < 500 } 
          end
        }
        r.report('select'){
          COUNT.times do |i|
            hsh.select { |k, v| v < 500 } 
          end
        }
        r.report('delete_if') { 
          COUNT.times do |i|
            hsh.delete_if { |k, v| v >= 500 }
          end
        }
        r.report('slice') { 
          COUNT.times do |i|
            hsh.slice(keys)
          end
        }
      end
    end

  end
end


