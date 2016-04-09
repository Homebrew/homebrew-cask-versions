cask 'thunderbird-uk' do
  version '38.7.2'
  sha256 '9f1d23b79c379fb3b7ab181db1762fb3a0ede2b3209ab4bd30ca81cce03de069'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
