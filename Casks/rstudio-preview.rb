cask 'rstudio-preview' do
  version '1.2.1502'
  sha256 '7518a7c4f71d50f18792150d83eff0d299d20023189fb746ac69f0fe97ebe868'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
