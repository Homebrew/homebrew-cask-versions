cask 'royal-tsx-beta' do
  version '3.1.4.7'
  sha256 'b0d2475df6228a2fc15a7dffedbde97f00481cc316e37fcd6f7b2161ad2b9793'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'd00d48fec01516ea3542425a0d1278402b5a24d94e222c997f983c1ad48f6c89'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
