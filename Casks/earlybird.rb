cask 'earlybird' do
  version '52.0a2'
  sha256 :no_check # required as upstream package is updated in-placea

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-aurora/thunderbird-#{version}.en-US.mac.dmg"
  name 'Earlybird'
  name 'Thunderbird Nightly'
  homepage 'https://www.mozilla.org/en-US/thunderbird/channel/'

  app 'Earlybird.app'
end
