cask :v1 => 'thunderbird-beta' do
  version '38.0b4'
  sha256 '07e8d88b0a1c37b9770f24b35e513fd27eefb7d34dca20236499692573739503'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
