require 'benchmark'


module Benchmarks
  module HashEach

    COUNT = 100_000

    def self.start
      hsh = {}
      1_000.times { |i| hsh[i] = rand(1_000) }

      Benchmark.bm(WIDTH) do |r|
        r.report('each') {
          c = 0
          COUNT.times do
            hsh.each do |key, value|
              if key > 500
                c += 1
              end
            end
          end
        }
        r.report('each_pair') {
          COUNT.times do
            c = 0
            hsh.each_pair do |key, value|
              if key > 500
                c += 1
              end
            end
          end
        }
        r.report('each_key'){
          COUNT.times do
            c = 0
            hsh.each_key do |key|
              if key > 500
                c += 1
              end
            end
          end
        }
        r.report('keys'){
          COUNT.times do
            c = 0
            hsh.keys.each do |key|
              if key > 500
                c += 1
              end
            end
          end
        }
      end
    end

  end
end


