require "csv"

CSV.foreach('db/phrases_sample.csv') do |row|
  Phrase.create(text: row[0], phrase_type: row[1].to_i, image: open("#{Rails.root}/app/assets/images/phrase_images/#{row[2]}"))
end
