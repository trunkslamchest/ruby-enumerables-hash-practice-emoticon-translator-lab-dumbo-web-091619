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



def get_japanese_emoticon(file_path, emoticon)

  search = load_library(file_path).reduce({}) { | memo, (main_keys, values) |

		find_emoticon = values.select { |key| key == emoticon }

		memo = find_emoticon.values[0]

		if memo == nil
			memo = "Sorry, that emoticon was not found"
		end

	memo
	}

return search
end



def get_english_meaning(file_path, emoticon)

arr1 = []
  search = load_library(file_path).reduce({}) { | memo, (main_keys, values) |
	find_emoticon = values.select { |key, value| key == emoticon }

	arr1 << find_emoticon.values[0]

memo = arr1[0]
		if memo == nil
			memo = "Sorry, that emoticon was not found"
		end

	memo
	}
# p arr1
return search
# p search
end