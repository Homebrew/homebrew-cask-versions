cask 'keepassx0' do
  version '0.4.3'
  sha256 '15ce2e950ab78ccb6956de985c1fcbf11d27df6a58ab7bf19e106f0a1dc2fedd'

  url "https://www.keepassx.org/releases/KeePassX-#{version}.dmg"
  name "KeePassX"
  homepage 'https://www.keepassx.org/'
  license :oss

  app 'KeePassX.app'
end
