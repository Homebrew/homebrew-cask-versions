cask :v1 => 'thunderbird-beta-ru' do
  version '41.0b2'
  sha256 '3fd0559d94c08bd99b186b8326d8b03425ec32c894df28ddd395c854f306a93d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
