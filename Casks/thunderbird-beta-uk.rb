cask 'thunderbird-beta-uk' do
  version '47.0b2'
  sha256 'aab26ebb9f1d4f16ca77f5f1651d8e739372e11922be916acb314ce25156a38e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
