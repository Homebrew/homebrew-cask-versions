cask 'royal-tsx-beta' do
  version '2.2.1.5'
  sha256 'abcf55a65d4ffcee7fe90d12ffc26c6f186b1a257b47aa7df6a7290d18c775c3'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  name 'Royal TSX'
  appcast 'http://v2.royaltsx.com/updates_beta.php'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
