require "yaml" # require modules here

def load_library(path)
    
  emoticons = YAML.load_file(path)
  h = {"get_meaning" => {},"get_emoticon"=> {} }
  
  emoticons.each do |emot|
    
       h["get_meaning"][emot[1][1]]  = emot[0]
       h["get_emoticon"][emot[1][0]] = emot[1][1]
  
  end
  return h
end

def get_japanese_emoticon(path, emot)
  h = load_library(path)
  if h["get_emoticon"].include?(emot)
    return h["get_emoticon"][emot]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emot)
  h = load_library(path)
   if h["get_meaning"].include?(emot)
    return h["get_meaning"][emot]
  else
    return "Sorry, that emoticon was not found"
  end
end