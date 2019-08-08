require 'benchmark'

module Benchmarks
  module StringEndWith
    HELLO = 'hello'
    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('regex =~') { 
          LOOP.times do
            if /^\w*llo$/ =~ HELLO
              a = ''
            end
          end
        }
        r.report('regex match') { 
          LOOP.times do
            if /^\w*llo$/.match?(HELLO)
              a = ''
            end
          end
        }
        r.report('end_with') { 
          LOOP.times do
            if HELLO.end_with?('llo')
              a = ''
            end
          end
        }
      end
    end
  end
end


