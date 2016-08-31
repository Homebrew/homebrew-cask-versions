cask 'thunderbird-uk' do
  version '45.3.0'
  sha256 '41ea1e0b5e168ce21a6eb07fe2989ff05c67312fbe8c47972b207beda91a1113'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
