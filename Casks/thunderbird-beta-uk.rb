cask 'thunderbird-beta-uk' do
  version '42.0b2'
  sha256 '9e4c3fd723d9a0f24055097c9f0045f7f1c936fdfd9b3c767dcbb24a8db906a5'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
