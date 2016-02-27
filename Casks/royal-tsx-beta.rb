cask 'royal-tsx-beta' do
  version '2.2.3.1000'
  sha256 '601ada5103428f2bca12941e68be90c5089c4c7b4e2f5a5eef62273f256df19a'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          checkpoint: '125af2862030f363930af28d816cdfa4ff45e9a201107ee7506f18b841bd332e'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
