cask 'royal-tsx-beta' do
  version '3.1.4.11'
  sha256 '40395129506434a5d006760f66e4942d4439b9cbbb0362bd4e9972d55a5132dc'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '8f1ff75a50800d34d3152946e139588966467b83056fbd7a2ca2d8db960bf319'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
