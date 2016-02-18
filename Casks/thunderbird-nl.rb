cask 'thunderbird-nl' do
  version '38.6.0'
  sha256 'b626830a939382a1447fc4f25460accfba9b1e9d282586398540b5329334518e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
