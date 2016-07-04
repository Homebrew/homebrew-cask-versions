cask 'thunderbird-fr' do
  version '45.2.0'
  sha256 '4b88919b5adbae9441ad3a6e4efdfc597f801be9a9903cc1147438d5a12dc5e4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
