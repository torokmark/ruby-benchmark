require 'benchmark'

module Benchmarks
  module StringConcat 
    COUNT = 10_000
    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('= +') { 
          hello = 'hello'
          COUNT.times do
            hello = hello + '= +' 
          end
        }
        r.report('+=') { 
          hello = 'hello'
          COUNT.times do
            hello += '+='
          end
        }       
        r.report('<<') { 
          hello = 'hello'
          COUNT.times do
            hello << ' << '
          end
        }
        r.report('concat') {
          hello = 'hello'
          COUNT.times do
            hello = hello.concat('concat')
          end
        }
        r.report('prepend') {
          hello = 'hello'
          COUNT.times do
            hello = hello.prepend('prepend')
          end
        }
        r.report('interpolation') {
          hello = 'hello'
          COUNT.times do
            hello = "#{ hello }interpolation"
          end
        }
      end
    end
  end
end


