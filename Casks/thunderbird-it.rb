cask :v1 => 'thunderbird-it' do
  version '31.2.0'
  sha256 '28bacc4d40ddc1d81eacb4b921006737a58fa69732b5afcbe596a4ec5709bc90'

  url "http://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/it/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end
