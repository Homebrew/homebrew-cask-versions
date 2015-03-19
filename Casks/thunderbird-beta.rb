cask :v1 => 'thunderbird-beta' do
  version '37.0b1'
  sha256 'a035e47ea01639df6f5fe05e7e115814fcca04005ef329a06968e4ab86c354e7'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
