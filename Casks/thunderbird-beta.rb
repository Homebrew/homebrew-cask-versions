cask :v1 => 'thunderbird-beta' do
  version '34.0b1'
  sha256 '7f6025c689633e893203490f11504b4790c46eca88393d7ab678b5405b8a8acb'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
