cask 'royal-tsx-beta' do
  version '3.0.0.48'
  sha256 'cce187c3a70007435cd724311e492a1ca474ecbbd73cb4a813f9ac296ab9c0a2'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '8723ae2b876aa690758c8564a0715585983d2a8b311b7d95f625462fe34ebd19'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
