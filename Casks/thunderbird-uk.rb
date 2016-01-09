cask 'thunderbird-uk' do
  version '38.5.1'
  sha256 'af35281921fed9b6ca3964106d72c30269f52644101c5e8c8fc855cf61d6aba6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
