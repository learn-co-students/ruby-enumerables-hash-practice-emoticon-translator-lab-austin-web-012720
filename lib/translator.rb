require "yaml"

def load_library(file)
  parsed_library = {:get_meaning => {}, :get_emoticon => {}}
  library = YAML.load_file(file)
  library.each_pair do |(key, value)|
    parsed_library[:get_meaning][value[1]] = key
    parsed_library[:get_emoticon][value[0]] = value[1]
  end
  return parsed_library
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)

  library[:get_emoticon].each_pair do |(key,value)|
    if key === emoticon
      return value
    end
  end 
  "Sorry, that emoticon was not found" 
end

def get_english_meaning(path, emoticon)
  library = load_library(path)

  library[:get_meaning].each_pair do |(key, value)| 
    if key === emoticon
      return value
    end
  end
  "Sorry, that emoticon was not found"
end