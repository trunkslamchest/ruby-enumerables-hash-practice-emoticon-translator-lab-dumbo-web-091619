require 'yaml'

def load_library(file_path)
  load_yaml = YAML.load_file(file_path)
	hash = {}

	load_yaml.values.each_with_index { |e, i|
		  hash = {:get_meaning => {e[1] => load_yaml.keys[i]}, :get_emoticon => {e[0] => e[1]}}
		return hash
	}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end