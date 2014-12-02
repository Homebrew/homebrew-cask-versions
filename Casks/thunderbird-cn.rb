cask :v1 => 'thunderbird-cn' do
  version '31.3.0'
  sha256 'b7fb163224143dc1cda73c4fed8b5e18758b248e208a01e83fbdc98c9f120c1b'

  url "ftp://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/#{version}/mac/zh-CN/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end
