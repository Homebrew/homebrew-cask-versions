cask 'thunderbird-uk' do
  version '38.5.0'
  sha256 '3da94688e8ad135476f4152e536e6ba8bf407b85ae7ba14809f246daab0041f3'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
