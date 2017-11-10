cask 'rstudio-preview' do
  version '1.1.383'
  sha256 'a30d71591789c3ee276c6376cc496bb75748dfe012d5e0b1e8a9f844d2472a43'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
