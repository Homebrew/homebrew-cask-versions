cask 'royal-tsx-beta' do
  version '3.0.0.51'
  sha256 '3c4b84bf058c175993c6d0653c7534627e31b5b930e73e16122374319a2d830b'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '399411b5628c468a130001466069452bae102b6722a0b3fc5e1c1d787a1c7ed1'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
