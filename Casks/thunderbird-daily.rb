cask 'thunderbird-daily' do
  version '63.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.dmg"
  name 'Earlybird'
  name 'Thunderbird Daily'
  homepage 'https://www.mozilla.org/en-US/thunderbird/channel/'

  app 'Thunderbird Daily.app'
end
