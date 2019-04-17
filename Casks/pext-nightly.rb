cask 'pext-nightly' do
  version :0.23.15.gac9a6bd
  sha256 :no_check

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/continuous/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  conflicts_with cask: 'pext'

  app 'Pext.app'
end
