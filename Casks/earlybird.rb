cask :v1 => 'earlybird' do
  version '37.0a2'
  sha256 'da335ece743f9211be7274e39a432cf4f1ec0886172cb0a731bd28489110964d'

  url "https://ftp.mozilla.org/pub/mozilla.org/thunderbird/nightly/latest-earlybird/thunderbird-#{version}.en-US.mac.dmg"
  name 'Earlybird'
  name 'Thunderbird Nightly'
  homepage 'https://www.mozilla.org/en-US/thunderbird/channel/'
  license :mpl

  app 'Earlybird.app'
end
