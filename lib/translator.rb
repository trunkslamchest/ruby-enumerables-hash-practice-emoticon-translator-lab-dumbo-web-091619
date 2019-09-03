require 'yaml'

def load_library(file_path)
  load_yaml = YAML.load_file(file_path)
	val1 = load_yaml.reduce({}) { |x, y|

	 x[:get_meaning] = {y[1][1] => y[0]}
	 x[:get_emoticon] = {y[1][0] => y[1][1]}
	x
	}
return val1
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end