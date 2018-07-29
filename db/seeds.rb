require "csv"

CSV.foreach('db/phrases_sample.csv') do |row|
  Phrase.create(text: row[0], phrase_type: row[1].to_i)
end
