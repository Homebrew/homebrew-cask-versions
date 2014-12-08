cask :v1 => 'royal-tsx-beta' do
  version '2.0.0.17'
  sha256 '45da4fb0b273fc038cdc91354d19a7f908d20ad67b84edfe79ef7c1843f475e2'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php'
  homepage 'http://www.royaltsx.com'
  license :unknown

  app 'Royal TSX.app'
end
