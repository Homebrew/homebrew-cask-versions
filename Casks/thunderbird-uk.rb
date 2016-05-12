cask 'thunderbird-uk' do
  version '45.1.0'
  sha256 '76950e9f9efa872db5b0fdde95be45aeb23460df48384dc6d23f30cd5f1c5d53'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
