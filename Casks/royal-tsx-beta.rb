cask 'royal-tsx-beta' do
  version '2.2.1.5'
  sha256 'abcf55a65d4ffcee7fe90d12ffc26c6f186b1a257b47aa7df6a7290d18c775c3'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  name 'Royal TSX'
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => 'f5a30300841e66f37005c35d327498682477c3cf3024bd850af9dd2af7fcd8ec'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
