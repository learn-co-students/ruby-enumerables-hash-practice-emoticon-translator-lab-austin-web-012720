require "yaml"

# require modules here

def load_library(file) 
  emoticons = YAML.load_file(file)
  
  newmoticons = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emoticons.each do |meaning, emoticons|
    english_emoticon = emoticons[0]
    japanese_emoticon = emoticons[1]
    newmoticons["get_meaning"][japanese_emoticon] = meaning
    newmoticons["get_emoticon"][english_emoticon] = japanese_emoticon
  end
  
  newmoticons
end 

def get_japanese_emoticon(data, emoticon_given)
  master_list = load_library(data)
  
  if master_list["get_emoticon"].key?(emoticon_given) then
    return master_list["get_emoticon"][emoticon_given]
  end
  
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(data, string)
  master_list = load_library(data)
  
  if master_list["get_meaning"].key?(string) then
    return master_list["get_meaning"][string]
  end
  
  return "Sorry, that emoticon was not found"
    
end