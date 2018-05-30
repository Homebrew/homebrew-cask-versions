cask 'rstudio-preview' do
  version '1.1.446'
  sha256 '44cb54fda79ad3ee78b0aa290ef64464bc2d5daaf5fca777fe4a9df1d4ecc4f7'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
