cask :v1 => 'royal-tsx-beta' do
  version '2.2.0.1000'
  sha256 '4f46388d574cc4b4bcc8881b5fdb086d0c8ea47a6cc5563ebe6cc4a84795d363'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  name 'Royal TSX'
  appcast 'http://v2.royaltsx.com/updates_beta.php'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
