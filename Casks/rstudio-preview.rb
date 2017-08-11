cask 'rstudio-preview' do
  version '1.1.331'
  sha256 '969e5e03a177be3b5ea6d92a3beb79f6ab339b86906f9a1b2cceb5dc856fc5ed'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
