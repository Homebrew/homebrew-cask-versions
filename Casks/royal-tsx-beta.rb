cask 'royal-tsx-beta' do
  version '3.2.9.3'
  sha256 '025fab646227d280df9667a64f227337f8f774747c9e81737efe409b23355365'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '1253197578b929f63ca9e8b002c3355eca1f0e201b429d0866ebc0a6f4d059bb'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
