#        one      two      three
# one    onw,one  one,two  one,three
# two
# three

print "What is the name of this script? >> "; function_name = gets.chomp

functions = File.read("_input/functions/input.txt")

ruby_function1 = functions
ruby_function2 = functions
ruby_function3 = functions

functions_sets = "def predictor1
  #{ruby_function1}
end

def predictor2
  #{ruby_function2}
end

def predictor3
  #{ruby_function3}
end

grid = [
  [['predictor1', 'predictor1'], ['predictor1', 'predictor2'], ['predictor1', 'predictor3']],
  [['predictor2', 'predictor1'], ['predictor2', 'predictor2'], ['predictor2', 'predictor3']],
  [['predictor3', 'predictor1'], ['predictor3', 'predictor2'], ['predictor3', 'predictor3']],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

function = grid[cur_row][cur_col][cur_arr]

if    function == 'predictor1'; predictor1
elsif function == 'predictor2'; predictor2
elsif function == 'predictor3'; predictor3
else
  puts 'No such predictor function...'
end"

File.open("_pathways/neuropaths/#{function_name}.rb", "w") { |f|
  f.puts function_sets
}
