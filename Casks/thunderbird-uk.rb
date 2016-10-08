cask 'thunderbird-uk' do
  version '45.4.0'
  sha256 '7cc800300dee7298cc2b2b1636f4a5213c15b24add42d928a7306a0d5478e1e6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'

  app 'Thunderbird.app'
end
