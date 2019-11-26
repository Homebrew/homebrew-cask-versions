cask 'rstudio-preview' do
  version '1.2.5019'
  sha256 '00cf7d64184753d2e6ac925c09cdc142de245c3a2ebdedcf1ec4134164896c77'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
