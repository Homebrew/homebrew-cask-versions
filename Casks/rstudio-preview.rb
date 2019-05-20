cask 'rstudio-preview' do
  version '1.2.1511'
  sha256 'ea52e682245f871361454b2fe6b2be4922b6391ef3d9b69165bebfd0403fa842'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
