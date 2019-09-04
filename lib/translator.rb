require 'yaml'

def load_library(file_path)
  load_yaml = YAML.load_file(file_path)

	japanese = {}
	english = {}

	load_yaml.reduce({}) { |memo, (meaning, emoticons)|
	japanese[emoticons[1]] = meaning
	english[emoticons[0]] = emoticons[1]
	}

	hash = {:get_meaning => japanese, :get_emoticon => english}

return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end