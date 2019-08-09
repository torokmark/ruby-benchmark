require 'benchmark'


module Benchmarks
  module HashDeleteAll

    COUNT = 10_000

    def self.start

      Benchmark.bm(WIDTH) do |r|
        r.report('{}'){
          COUNT.times do |i|
            hsh = {}
            1_000.times { |i| hsh[i] = rand(1_000) }
            hsh = {}
          end
        }
        r.report('clear'){
          COUNT.times do |i|
            hsh = {}
            1_000.times { |i| hsh[i] = rand(1_000) }
            hsh.clear
          end
        }
        r.report('delete_if') { 
          COUNT.times do |i|
            hsh = {}
            1_000.times { |i| hsh[i] = rand(1_000) }
            hsh.delete_if { |k, v| hsh.has_key?(k) }
          end
        }
        r.report('reject') { 
          COUNT.times do |i|
            hsh = {}
            1_000.times { |i| hsh[i] = rand(1_000) }
            hsh.reject! { |k, v| hsh.has_key?(k) }
          end
        }
      end
    end

  end
end


