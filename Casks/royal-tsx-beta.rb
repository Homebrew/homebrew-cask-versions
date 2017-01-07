cask 'royal-tsx-beta' do
  version '3.0.1.3'
  sha256 'c55754297864bcf054205e8b8f65cdb7e6f4007c0928faa22148c572e35d9509'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '75a462fb1c2408c06f54f7f26a1939c4552a07a9663508808231916491e3c60a'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
