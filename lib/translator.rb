# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  # code goes here
  emoticons_file = YAML.load_file(file)

  emoticons_hash = {
    get_emoticon: {},
    get_meaning: {}
  }

  emoticons_file.each do |key, array|
    array.each do |emoticon|
      emoticons_hash[:get_emoticon][array.first] = array.last
      emoticons_hash[:get_meaning][array.last] = key
    end
  end
  emoticons_hash
end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)
  if !emoticons[:get_emoticon].has_key?(emoticon)
    return "Sorry, that emoticon was not found"
  else
    return emoticons[:get_emoticon][emoticon]
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
  emoticons = load_library(file)
  if !emoticons[:get_meaning].has_key?(emoticon)
    return "Sorry, that emoticon was not found"
  else
    return emoticons[:get_meaning][emoticon]
  end
end
