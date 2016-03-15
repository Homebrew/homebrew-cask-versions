cask 'thunderbird-beta-ru' do
  version '45.0b2'
  sha256 '9599f26fd1a995fdfbf8d8a799afefd654999724af3ddde6abbf49e17f1c6b91'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
