require 'benchmark'

module Benchmarks
  module StringInclude
    HELLO = 'hello'
    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('regex =~ with ends') { 
          LOOP.times do
            if /^\w*llo\w*$/ =~ HELLO
              a = ''
            end
          end
        }
        r.report('regex =~') { 
          LOOP.times do
            if /llo/ =~ HELLO
              a = ''
            end
          end
        }
        
        r.report('regex match') { 
          LOOP.times do
            if /llo/.match?(HELLO)
              a = ''
            end
          end
        }
        r.report('include') { 
          LOOP.times do
            if HELLO.include?('llo')
              a = ''
            end
          end
        }
      end
    end
  end
end


