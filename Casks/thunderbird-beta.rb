cask 'thunderbird-beta' do
  version '45.0b2'
  sha256 '84fbce6634afa0b300acea98bc532de3652b52ac5ab0b78c4c15b2f9cc1ce6e5'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
