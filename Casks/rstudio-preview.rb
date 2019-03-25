cask 'rstudio-preview' do
  version '1.2.1330'
  sha256 '976d023b5a26979063f9d9514baa0bf44ec38d26672ad43bdc066094ddeea9a7'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
