cask 'thunderbird-nl' do
  version '38.5.1'
  sha256 '6dd32d1b6963d9dfcb1eea932135830906e8f2687bf1771fcf53c740d7bcf143'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
