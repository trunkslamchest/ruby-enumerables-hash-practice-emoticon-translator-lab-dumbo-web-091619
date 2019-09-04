require 'yaml'

def load_library(file_path)
  load_yaml = YAML.load_file(file_path)

	arr1 = {}
	arr2 = {}
	load_yaml.reduce({}) { |x, (y, z)|
	arr1[z[1]] = y
	arr2[z[0]] = z[1]
	}
hash = {:get_meaning => arr1, :get_emoticon => arr2}

return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end