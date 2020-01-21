# require modules here
require 'yaml'
require 'pp'

def load_library(file_path)
  data = YAML.load_file(file_path)
  
  emoticons = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  for each in data.keys
    emoticons[:get_meaning][data[each][1]] = each 
    emoticons[:get_emoticon][data[each][0]] = data[each][1] 
  end
  
  return emoticons
end

def get_japanese_emoticon(file_path, us_emo)
  jap_emo = ""
  look_up = load_library(file_path)
  
  if look_up[:get_emoticon][us_emo]
    jap_emo = look_up[:get_emoticon][us_emo]
  else
    jap_emo = "Sorry, that emoticon was not found"
  end
    
  return jap_emo
end

def get_english_meaning(file_path, jap_emo)
  us_emo = ""
  look_up = load_library(file_path)
  
  if look_up[:get_meaning][jap_emo]
    us_emo = look_up[:get_meaning][jap_emo]
  else 
    us_emo = "Sorry, that emoticon was not found"
  end
  
  return us_emo
end