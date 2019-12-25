require 'yaml'

def load_library(yaml_file)
  emoticons_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons = YAML.load_file(yaml_file)
  emoticons.each do |meaning, array|
     english = array[0]
     japanese = array[1]
     
     emoticons_hash["get_meaning"][japanese] = meaning
     emoticons_hash["get_emoticon"][english] = japanese
  end 
  emoticons_hash
end

def get_japanese_emoticon(yaml_file, emoticon)
  emoticons_hash = load_library(yaml_file)
  
  japanese_emoticon = emoticons_hash["get_emoticon"][emoticon]
  if japanese_emoticon
    japanese_emoticon
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml_file, emoticon)
  emoticons_hash = load_library(yaml_file)
  
  english_emoticon = emoticons_hash["get_meaning"][emoticon]
  if english_emoticon
    english_emoticon
  else
    return "Sorry, that emoticon was not found"
  end  
end
