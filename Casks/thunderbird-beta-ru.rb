cask 'thunderbird-beta-ru' do
  version '47.0b2'
  sha256 '66fe6a6369c4fa31b4e3eb84967969e194b24c401050d6a3c89a3876ac2c491b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
