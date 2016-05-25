cask 'thunderbird-beta-uk' do
  version '45.2b1'
  sha256 '6c379f61ae6dcc2baefbe3d48f1abba77f67680cdf1fb31d2ad61f261bead7f7'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
