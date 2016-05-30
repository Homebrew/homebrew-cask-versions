cask 'thunderbird-uk' do
  version '45.1.1'
  sha256 '077dc1ae4fea7e4532b747a89f322c50f22c671706010048eaefc7cfdbb093d4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
