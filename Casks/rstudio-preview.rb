cask 'rstudio-preview' do
  version '1.2.1060'
  sha256 '86e08615103419fcc2246d359dbace3d751994d10b39e67d2d7b1eb5b6c75825'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
