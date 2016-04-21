cask 'thunderbird-uk' do
  version '45.0'
  sha256 'f0f53bf3661d000b26fdac398f47ab81febf64d1c1860810bf8fcc3918ce1a92'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
