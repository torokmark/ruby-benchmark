
require_relative 'benchmarks/object_nil'
require_relative 'benchmarks/integer_increase'

require_relative 'benchmarks/array_create'
require_relative 'benchmarks/array_empty'
require_relative 'benchmarks/array_push'
require_relative 'benchmarks/array_concat'
require_relative 'benchmarks/array_first_take_slice'
require_relative 'benchmarks/array_find_index'
require_relative 'benchmarks/array_length_size'
require_relative 'benchmarks/array_multiplication'

require_relative 'benchmarks/loops'
#require_relative 'benchmarks/string_new_concat'
require_relative 'benchmarks/string_concat'
require_relative 'benchmarks/string_end_with'

WIDTH = 14
LOOP = 5_000_000

task :default => [
  :object_nil,
  :integer_increase,
  :array_create, 
  :array_empty, 
  :array_push,
  :array_concat,
  :array_first_take_slice,
  :array_find_index,
  :array_length_size,
  :array_multiplication,
  :loops,
  :string_concat

]

OBJECT_NIL = 'Object nil check :: nil vs == vs .nil?'
desc OBJECT_NIL
task :object_nil do
  p "==>> #{ OBJECT_NIL }"
  Benchmarks::ObjectNil.start
end

INTEGER_INCREASE = 'Integer Increase check :: next vs += vs = +'
desc INTEGER_INCREASE
task :integer_increase do
  p "==>> #{ INTEGER_INCREASE }"
  Benchmarks::IntegerIncrease.start
end

ARRAY_CREATE = 'Array Create check :: new vs []'
desc ARRAY_CREATE
task :array_create do
  p "==>> #{ ARRAY_CREATE }"
  Benchmarks::ArrayCreate.start
end

ARRAY_EMPTY = 'Array Empty check :: == vs .empty?'
desc ARRAY_EMPTY
task :array_empty do
  p "==>> #{ ARRAY_EMPTY }"
  Benchmarks::ArrayEmpty.start
end

ARRAY_PUSH = 'Array Push check :: push vs append vs <<'
desc ARRAY_PUSH
task :array_push do
  p "==>> #{ ARRAY_PUSH }"
  Benchmarks::ArrayPush.start
end

ARRAY_CONCAT = 'Array Concat check :: + vs concat'
desc ARRAY_CONCAT
task :array_concat do
  p "==>> #{ ARRAY_CONCAT }"
  Benchmarks::ArrayConcat.start
end

ARRAY_FIRST_TAKE_SLICE = 'Array First check :: first vs take vs slice'
desc ARRAY_FIRST_TAKE_SLICE
task :array_first_take_slice do
  p "==>> #{ ARRAY_FIRST_TAKE_SLICE }"
  Benchmarks::ArrayFirstTakeSlice.start
end

ARRAY_FIND_INDEX = 'Array Find check :: find_index vs index'
desc ARRAY_FIND_INDEX
task :array_find_index do
  p "==>> #{ ARRAY_FIND_INDEX }"
  Benchmarks::ArrayFindIndex.start
end

ARRAY_LENGTH_SIZE = 'Array Size check :: length vs size'
desc ARRAY_LENGTH_SIZE
task :array_length_size do
  p "==>> #{ ARRAY_LENGTH_SIZE }"
  Benchmarks::ArrayLengthSize.start
end

ARRAY_MULTIPLICATION = 'Array Multiplication check :: * vs concat vs push'
desc ARRAY_MULTIPLICATION
task :array_multiplication do
  p "==>> #{ ARRAY_MULTIPLICATION }"
  Benchmarks::ArrayMultiplication.start
end

LOOPS = 'Loops :: break if vs while vs until vs do-while vs for vs times'
desc LOOPS
task :loops do
  p "==>> #{ LOOPS }"
  Benchmarks::Loops.start
end

STRING_CONCAT = 'String Concat :: + vs += vs << vs concat vs prepend vs interpolation'
desc STRING_CONCAT
task :string_concat do
  p "==>> #{ STRING_CONCAT }"
  Benchmarks::StringConcat.start
end














