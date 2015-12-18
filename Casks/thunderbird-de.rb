cask 'thunderbird-de' do
  version '38.4.0'
  sha256 'aec818c435b627d4b7c557ecefabd8a9e4e0420d2de9dea6d168f29ae0b1c839'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/de/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
