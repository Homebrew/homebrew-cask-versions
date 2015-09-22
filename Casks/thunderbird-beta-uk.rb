cask :v1 => 'thunderbird-beta-uk' do
  version '41.0b2'
  sha256 'b834cdf7b18772dbb1eb227a98e07210c5bd06570d45405a7f0242fbe9847cca'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
