cask 'thunderbird-uk' do
  version '38.7.1'
  sha256 '2c8e9eb7f6e11a2134ad8b10eaaceb91f451d01bff6b7f30b1dfdeccb1d5ab7c'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
