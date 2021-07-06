require 'yaml'

thing = YAML.load_file(emoticon-translator-lab-austin-web-012720/lib/emoticons.yml)
puts thing.inspect



emoticons = {angry: "xxxx" , "zzzz"}
  emoticons.reduce ({}) do |memo, pair|
    japanese = pair[1][1]
  answer = japanese if pair[1][0].include?(wsym) 

memo
end
answer
end

   data[:color].reduce({}) do |memo, pair|
    color_symbol = pair[0]
    color = color_symbol.to_s
    pigeon_names_hash[name][:color] << color if data[:color][pair[0]].include?(name)
    memo 
  end
  
  
  
  
  
  
  
  def get_japanese_emoticon(library, western_emoticon)
 # need to load library 
 
emoticons = load_library(library)
 
 # input is a western emoticon
 # output is a japanese emoticon
 
  emoticons.reduce ({}) do |memo, pair|
    japanese = pair[1][1]
    answer = japanese if pair[1][0].include?(western_emoticon)
    memo
  end
answer
end

def get_english_meaning(library, japanese_emoticon)
# need to load library load_library(western_emoticon)
emoticons = load_library(library)

 # input is a japanese emoticon
 
 
 # output is English meaning 
 
 end