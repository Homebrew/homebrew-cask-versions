cask 'rstudio-preview' do
  version '1.2.1568'
  sha256 'f9076b3a2d04809f1a1f66a8aff6ef827ebfe4b63398127eec564bf9239e41c1'

  # rstudio-ide-build.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://rstudio-ide-build.s3.amazonaws.com/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
