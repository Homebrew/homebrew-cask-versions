cask 'royal-tsx-beta' do
  version '2.2.1.5'
  sha256 'abcf55a65d4ffcee7fe90d12ffc26c6f186b1a257b47aa7df6a7290d18c775c3'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  name 'Royal TSX'
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '51ac7cd5b6f296d5b28d6d8f959e4e01d29ca28d4742eebe25c061d18f5d649c'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
