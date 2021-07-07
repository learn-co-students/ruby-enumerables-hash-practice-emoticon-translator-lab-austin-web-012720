# require modules here
require 'yaml'

def load_library(path)
  
  emoticons={"get_meaning"=>{}, "get_emoticon"=>{}}
  
  YAML.load_file(path).each do |meaning, symbol| 
  emoticons["get_meaning"][symbol[1]] = meaning
  emoticons["get_emoticon"][symbol[0]] = symbol[1]
  end #eng to jap
  emoticons
end
 

def get_japanese_emoticon (path, emoticon)
  library = load_library(path)
  if library["get_emoticon"].include?(emoticon) 
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path,emoticon)
  library = load_library(path)
  if library["get_meaning"].include?(emoticon) 
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end