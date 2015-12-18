cask 'thunderbird-beta-ru' do
  version '42.0b2'
  sha256 'c00e10cfdc993a5b52a60d7bf74b440944d1d1f76bc2a9963bed3599c7d59ce6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
