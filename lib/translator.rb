# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  file = YAML.load_file(file)
  hash =  {
  get_meaning: {},
  get_emoticon: {}
          }
  file.each do |key, array|
              array.each do |emote| 
                          hash[:get_meaning][array[1]]= key
                          hash[:get_emoticon][array[0]] = array[1]
                        end
            end
   #binding.pry
hash
end

def get_japanese_emoticon(file , emote)
  emotes = load_library(file)
  if !emotes[:get_emoticon].has_key?(emote)
    return "Sorry, that emoticon was not found"
  else
  return emotes[:get_emoticon][emote]
  end
end

def get_english_meaning(file,emote)
  emotes = load_library(file)
  if !emotes[:get_meaning].has_key?(emote)
    return "Sorry, that emoticon was not found"
  else
  return emotes[:get_meaning][emote]
  end
end