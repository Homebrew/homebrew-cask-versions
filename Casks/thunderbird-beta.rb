cask 'thunderbird-beta' do
  version '45.2b1'
  sha256 '9c06c9be121bff300c9090e31ca04b5beeb3c1cd741efdaa0e0bb7c00c21e3ba'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
