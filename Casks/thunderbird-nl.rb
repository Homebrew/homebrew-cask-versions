cask 'thunderbird-nl' do
  version '45.0'
  sha256 '0c5b7c797614d7d78d438e977c26b062c66f2e9cb96403d25a5fe48ee717afec'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
