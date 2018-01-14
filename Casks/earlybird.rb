cask 'earlybird' do
  version '58.0b3'
  sha256 :no_check # required as upstream package is updated in-place

  # download-installer.cdn.mozilla.net/pub/thunderbird/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  name 'Earlybird'
  name 'Thunderbird Nightly'
  homepage 'https://www.mozilla.org/en-US/thunderbird/channel/'

  depends_on macos: '>= :mavericks'

  app 'Earlybird.app'
end
