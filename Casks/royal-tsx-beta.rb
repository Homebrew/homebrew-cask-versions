cask 'royal-tsx-beta' do
  version '3.2.1.4'
  sha256 'da56bf2ae18760fd0d31d940c3cfc290f8c5603c41381a617b64193794fe6e95'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'f11934dbf8da8555526d51d8bdacd6190c08063114e4940fd073ee3d362a3095'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
