cask 'rstudio-preview' do
  version '1.3.820'
  sha256 'f5ac8a4ef9f8e1191d255459a5d50a182b9fceb827272c64106d6c6f28f5c5c5'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
