require "yaml"
# require modules here

def load_library (path)
  yaml_file = YAML.load_file(path)# code goes here
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  yaml_file.each {|meaning, arr| emoticons ["get_meaning"][arr[1]] = meaning
    emoticons["get_emoticon"][arr[0]] = arr[1]}
    emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  if emoticons["get_emoticon"].key?(emoticon) 
    emoticons["get_emoticon"][emoticon] 
  else "Sorry, that emoticon was not found"
    end
  
  # code goes here
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  if emoticons["get_meaning"].key?(emoticon)
    emoticons["get_meaning"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end