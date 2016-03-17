cask 'thunderbird-uk' do
  version '38.7.0'
  sha256 'cc988d9f36dd3abdd7b965c56e32a43fc0b0502846a4a2533b04c62dac790eb6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
