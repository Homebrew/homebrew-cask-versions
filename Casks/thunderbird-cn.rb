cask :v1 => 'thunderbird-cn' do
  version '31.2.0'
  sha256 'be5d5b95e6f747bba18cdaf5f746b16c44f563ca3e4bb735a9400c15a075b2b1'

  url "ftp://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/#{version}/mac/zh-CN/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end
