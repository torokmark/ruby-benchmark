require 'benchmark'


module Benchmarks
  module HashHasKey

    def self.start
      hsh = {}
      100_000.times { |i| hsh[i] = rand(1_000) }
      key = 45670

      Benchmark.bm(WIDTH) do |r|
        r.report('[]'){
          LOOP.times do
            if hsh[key]
              a = ''
            end
          end
        }
        r.report('.key?'){
          LOOP.times do
            if hsh.key?(key)
              a = ''
            end
          end
        }
        r.report('.include?'){
          LOOP.times do
            if hsh.include?(key)
              a = ''
            end
          end
        }
        r.report('.member?') { 
          LOOP.times do
            if hsh.member?(key)
              a = ''
            end
          end
        }
      end
    end

  end
end


