cask 'thunderbird-nl' do
  version '38.7.1'
  sha256 '5303593adc1d9f71f2faa1e2beba173c5a29a12cf32a96533abe9783e49dca3d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
