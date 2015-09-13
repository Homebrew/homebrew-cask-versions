cask :v1 => 'thunderbird-beta-uk' do
  version '41.0b1'
  sha256 '1fbe224cc673f783e4e11636fcca8f460e3f88000355a3cc1bbf40343c28516f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
