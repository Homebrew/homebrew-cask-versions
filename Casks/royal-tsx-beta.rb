cask 'royal-tsx-beta' do
  version '3.1.4.2'
  sha256 '1f6988982e3ba2154743ec94e9b1b9b7e8150be583bd2c391990133a9b733c46'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '150587b038a3f8d9f0ca3f7502255e7ca35ddb330a1de88f155b24af4cf1cd74'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
