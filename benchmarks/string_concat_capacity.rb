require 'benchmark'

module Benchmarks
  module StringConcatCapacity
    CAP = 1_000_000

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('with capacity') {
          hello = String.new('', capacity: CAP)
          CAP.times do
            hello = hello.concat('a')
          end
        }
        r.report('without capacity') {
          hello = String.new('') 
          CAP.times do
            hello = hello.concat('a')
          end
        }
      end
    end

  end
end


