cask 'rstudio-preview' do
  version '1.1.444'
  sha256 '37b1181da721f34bb3a8fdec66cd94b42592dca5ca4eb7d90ece971e1e2b2382'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
