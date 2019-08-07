require 'benchmark'

module Benchmarks
  module Loops 
    COUNT = 5_000_000

    def self.start
      Benchmark.bm(WIDTH) do |r|
        r.report('break if') { 
          i = 0
          loop do
            i += 1
            a = 'action is done'
            break if i == COUNT
          end
        }
        r.report('while') { 
          i = 0
          while i < COUNT
            i += 1
            a = 'action is done'
          end
        }
        r.report('until') { 
          i = 0
          until i > COUNT
            i += 1
            a = 'action is done'
          end
        }
        r.report('do-while') { 
          i = 0
          begin 
            i += 1
            a = 'action is done'
          end while i < COUNT
        }
        r.report('for') { 
          j = 0
          for i in 1..COUNT do  
            j += 1
            a = 'action is done'
          end 
        }
        r.report('times') { 
          j = 0
          COUNT.times do  
            j += 1
            a = 'action is done'
          end 
        }
        r.report('each') { 
          j = 0
          (1..COUNT).each do  
            j += 1
            a = 'action is done'
          end 
        }
      end
    end
  end
end


