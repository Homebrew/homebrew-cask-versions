cask 'thunderbird-gl' do
  version '38.7.1'
  sha256 'e1bd83cb58400530f65ec11a3c752660234d9a3df87dd1a86677ec5ff4ab60a0'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
