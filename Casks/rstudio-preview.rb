cask 'rstudio-preview' do
  version '1.1.442'
  sha256 '1a1064c860d4172b1dd51f8f798bcbb0c5d41ce56fb63a65ccecced513205957'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
