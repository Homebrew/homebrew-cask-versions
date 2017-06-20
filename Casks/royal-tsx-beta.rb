cask 'royal-tsx-beta' do
  version '3.2.1.3'
  sha256 '15b92eab00d242bee9915d80d59653496c5a2b9bf97f41c54ee1dae0a6366b39'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '0bc660ce3945af6dfa741b66943304a0b87b16e3ef75fae411490b060f7bac1c'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
