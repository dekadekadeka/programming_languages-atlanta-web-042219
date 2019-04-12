require 'pry'

def reformat_languages(languages)
  # languages.map{|language| binding.pry}

  new_hash = {}
  # style_hash = {}
  # new_style = {}
  # your code here
  languages.each do |style, language|
  #  style_hash[:style] = languages.keys
  #  if style_hash[:style].length == 2
  #    new_style[:style] ||= []
  #     new_style[:style] << [style]
  #   else
  #     new_style[:style] = [style]
  #  end
     language.each do |lang, type|
       new_hash[lang] ||= type
       new_hash[lang][:style] ||= []
       new_hash[lang][:style] << style
#      new_hash[lang] = type.merge(new_style)
    end
  end
  new_hash
end
