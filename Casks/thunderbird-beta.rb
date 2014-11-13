cask :v1 => 'thunderbird-beta' do
  version '34.0b1'
  sha256 '775e548e592f2788d991fe41ff2093bc902ceaa19bef83429e613375c7fa7887'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
