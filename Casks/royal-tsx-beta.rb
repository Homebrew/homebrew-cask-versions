cask 'royal-tsx-beta' do
  version '3.2.0.1000'
  sha256 'f497685da846d04fad39fe1d6bcdd9de44dbffae5c9dbd03d2f537b2c71c999d'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '8a18bb22184dcb1dd982ea0c1584e97015ab00f9e47af5ce9d8fea5c13eb11fe'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
