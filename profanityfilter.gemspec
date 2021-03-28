Gem::Specification.new do |s|
    s.name = 'isprofanity'
    s.version = '0.0.1'
    s.date = '2021-03-22'
    s.summary = "Check inputted string for profanity!"
    s.description = "A gem designed to compare inputted strings for profanity. Useful for catching unwanted words before user posts are published live."
    s.authors = ["Max Delaney"]
    s.email = 'x18100368@student.ncirl.ie'
    s.homepage = 'https://www.linkedin.com/in/max-delaney/'
    s.files = Dir["lib/isprofanity.rb"] + Dir["lib/unwanted_words.json"]
    s.licenses = "CC-BY-SA-4.0"
end