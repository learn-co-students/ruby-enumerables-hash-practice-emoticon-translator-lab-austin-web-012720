# require modules here
require "yaml"

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  hash.each do |key, value|
    english = value[0]
    japanese = value[1]
    emoticons["get_meaning"][japanese] = key.to_s 
    emoticons["get_emoticon"][english] = japanese
  end
  emoticons
  
end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    return "Sorry, that emoticon was not found"
  end
  
end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  result = emoticons["get_meaning"][emoticon]
  if result
    result
  else 
    return "Sorry, that emoticon was not found"
  end
  
end