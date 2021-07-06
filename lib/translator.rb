# require modules here
require "yaml"
def load_library(library)
  emoticons = {:get_meaning => {}, :get_emoticon => {} }
  data = YAML.load_file(library)
  
   data.reduce ({}) do |memo, pair|
    emoticons[:get_meaning][pair[1][1]] = pair[0]
    emoticons[:get_emoticon][pair[1][0]] = pair[1][1]
    memo
   end
    emoticons
end

def get_japanese_emoticon(library, western_emoticon)
 # need to load library 
 # input is a western emoticon
 # output is a japanese emoticon
   emoticons = load_library(library)
   if emoticons[:get_emoticon][western_emoticon]
     answer = emoticons[:get_emoticon][western_emoticon]
     answer
   else
     p "Sorry, that emoticon was not found"
   end
end

def get_english_meaning(library, japanese_emoticon)
# need to load library load_library(western_emoticon)
# input is a japanese emoticon
# output is English meaning 
 emoticons = load_library(library)
  if emoticons[:get_meaning][japanese_emoticon]
   answer = emoticons[:get_meaning][japanese_emoticon]
   answer
  else
   p "Sorry, that emoticon was not found"
  end
end