
require_relative 'benchmarks/object_nil'
require_relative 'benchmarks/integer_increase'

require_relative 'benchmarks/loops'
require_relative 'benchmarks/statement_modifier' # if ... vs ... if, unless ... vs ... unless

require_relative 'benchmarks/string_create'
require_relative 'benchmarks/string_concat_capacity'
require_relative 'benchmarks/string_concat'
require_relative 'benchmarks/string_end_with'
require_relative 'benchmarks/string_include'

require_relative 'benchmarks/array_create'
require_relative 'benchmarks/array_create_with_values'
require_relative 'benchmarks/array_empty'
require_relative 'benchmarks/array_push'
require_relative 'benchmarks/array_concat'
require_relative 'benchmarks/array_first_take_slice'
require_relative 'benchmarks/array_find_index'
require_relative 'benchmarks/array_length_size'
require_relative 'benchmarks/array_multiplication'
require_relative 'benchmarks/array_branch_prediction'

require_relative 'benchmarks/hash_create' 
require_relative 'benchmarks/hash_empty' 
=begin
require_relative 'benchmarks/hash_add' # store
require_relative 'benchmarks/hash_delete' # delete vs {}
require_relative 'benchmarks/hash_fetch_dig'
require_relative 'benchmarks/hash_each' # each each_key each_pair each_value
require_relative 'benchmarks/hash_has_key' # include? vs [] vs key vs member
require_relative 'benchmarks/hash_size_length' # length, size

require_relative 'benchmarks/array_set_hash_get'
=end


WIDTH = 20
LOOP = 5_000_000

task :default => [
  :object_nil,
  :integer_increase,

  :loops,
  :statement_modifier,

  :array_create, 
  :array_create_with_values, 
  :array_empty, 
  :array_push,
  :array_concat,
  :array_first_take_slice,
  :array_find_index,
  :array_length_size,
  :array_multiplication,
  :array_branch_prediction,

  :hash_create,
  :hash_empty,

  :string_create,
  :string_concat,
  :string_concat_capacity,
  :string_end_with,
  :string_include

]

def pr(text)
  puts "```\n---\n\n#### #{ text }\n```"
end

OBJECT_NIL = 'Object nil check :: nil vs == vs .nil?'
desc OBJECT_NIL
task :object_nil do
  pr OBJECT_NIL
  Benchmarks::ObjectNil.start
end

INTEGER_INCREASE = 'Integer Increase check :: next vs += vs = +'
desc INTEGER_INCREASE
task :integer_increase do
  pr INTEGER_INCREASE
  Benchmarks::IntegerIncrease.start
end

LOOPS = 'Loops :: break if vs while vs until vs do-while vs for vs times'
desc LOOPS
task :loops do
  pr LOOPS
  Benchmarks::Loops.start
end

STATEMENT_MODIFIER = 'Statement Modifier check :: if ... vs ... if'
desc STATEMENT_MODIFIER
task :statement_modifier do 
  pr STATEMENT_MODIFIER
  Benchmarks::StatementModifier.start
end

ARRAY_CREATE = 'Array Create check :: new vs []'
desc ARRAY_CREATE
task :array_create do
  pr ARRAY_CREATE
  Benchmarks::ArrayCreate.start
end

ARRAY_CREATE_WITH_VALUES = 'Array Create with values'
desc ARRAY_CREATE_WITH_VALUES
task :array_create_with_values do
  pr ARRAY_CREATE_WITH_VALUES
  Benchmarks::ArrayCreateWithValues.start
end

ARRAY_EMPTY = 'Array Empty check :: == vs .empty?'
desc ARRAY_EMPTY
task :array_empty do
  pr ARRAY_EMPTY
  Benchmarks::ArrayEmpty.start
end

ARRAY_PUSH = 'Array Push check :: push vs append vs <<'
desc ARRAY_PUSH
task :array_push do
  pr ARRAY_PUSH
  Benchmarks::ArrayPush.start
end

ARRAY_CONCAT = 'Array Concat check :: + vs concat'
desc ARRAY_CONCAT
task :array_concat do
  pr ARRAY_CONCAT
  Benchmarks::ArrayConcat.start
end

ARRAY_FIRST_TAKE_SLICE = 'Array First check :: first vs take vs slice'
desc ARRAY_FIRST_TAKE_SLICE
task :array_first_take_slice do
  pr ARRAY_FIRST_TAKE_SLICE
  Benchmarks::ArrayFirstTakeSlice.start
end

ARRAY_FIND_INDEX = 'Array Find check :: find_index vs index'
desc ARRAY_FIND_INDEX
task :array_find_index do
  pr ARRAY_FIND_INDEX
  Benchmarks::ArrayFindIndex.start
end

ARRAY_LENGTH_SIZE = 'Array Size check :: length vs size'
desc ARRAY_LENGTH_SIZE
task :array_length_size do
  pr ARRAY_LENGTH_SIZE
  Benchmarks::ArrayLengthSize.start
end

ARRAY_MULTIPLICATION = 'Array Multiplication check :: * vs concat vs push'
desc ARRAY_MULTIPLICATION
task :array_multiplication do
  pr ARRAY_MULTIPLICATION
  Benchmarks::ArrayMultiplication.start
end

ARRAY_BRANCH_PREDICITION = 'Array Branch Prediction check :: sorted vs unsorted'
desc ARRAY_BRANCH_PREDICITION
task :array_branch_prediction do
  pr ARRAY_BRANCH_PREDICITION
  Benchmarks::ArrayBranchPrediction.start
end

STRING_CREATE = 'String Create :: string lit vs new vs new + string lit'
desc STRING_CREATE
task :string_create do
  pr STRING_CREATE
  Benchmarks::StringCreate.start
end

STRING_CONCAT = 'String Concat :: + vs += vs << vs concat vs prepend vs interpolation'
desc STRING_CONCAT
task :string_concat do
  pr STRING_CONCAT
  Benchmarks::StringConcat.start
end

STRING_CONCAT_CAPACITY = 'String Concat Capacity :: with vs without cap'
desc STRING_CONCAT_CAPACITY
task :string_concat_capacity do
  pr STRING_CONCAT_CAPACITY
  Benchmarks::StringConcatCapacity.start
end

STRING_END_WITH = 'String End With :: regex vs end_with'
desc STRING_END_WITH
task :string_end_with do
  pr STRING_END_WITH
  Benchmarks::StringEndWith.start
end

STRING_INCLUDE = 'String Include :: regex vs index vs include'
desc STRING_INCLUDE
task :string_include do
  pr STRING_INCLUDE
  Benchmarks::StringInclude.start
end

HASH_CREATE = 'Hash Create'
desc HASH_CREATE 
task :hash_create do
  pr HASH_CREATE
  Benchmarks::HashCreate.start
end

HASH_EMPTY = 'Hash Empty'
desc HASH_EMPTY
task :hash_empty do
  pr HASH_EMPTY
  Benchmarks::HashEmpty.start
end














