cask :v1 => 'royal-tsx-beta' do
  version '2.0.4.9'
  sha256 'a08f1ef7605a23bd1eef4a50524d52191c5d098c54b10232b89412bcf0326b78'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php'
  homepage 'http://www.royaltsx.com'
  license :unknown

  app 'Royal TSX.app'
end
