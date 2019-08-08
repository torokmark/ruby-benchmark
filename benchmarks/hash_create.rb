require 'benchmark'


module Benchmarks
  module HashEmpty
  
    HSH = {}

    def self.start

      1_000.times { |i| HSH[i] = rand(1_000) }

      Benchmark.bm(WIDTH) do |r|
        r.report('==') { 
          LOOP.times do 
            if HSH == {}
              a = ''
            end
          end
        }
        r.report('keys == []') { 
          LOOP.times do 
            if HSH.keys == []
              a = ''
            end
          end
        }
        r.report('length') { 
          LOOP.times do 
            if HSH.length == 0
              a = ''
            end
          end
        }
        r.report('empty?') { 
          LOOP.times do 
            if HSH.empty?
              a = ''
            end
          end
        }
        r.report('any?') { 
          LOOP.times do 
            if HSH.any? { |item| item != nil }
              a = ''
            end
          end
        }
        r.report('<=') { 
          LOOP.times do 
            if HSH <= {}
              a = ''
            end
          end
        }
        r.report('eql?') { 
          LOOP.times do 
            if HSH.eql?({})
              a = ''
            end
          end
        }
        r.report('eql?') { 
          LOOP.times do 
            if {}.eql?(HSH)
              a = ''
            end
          end
        }
     end
    end

  end
end


