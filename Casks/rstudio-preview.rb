cask 'rstudio-preview' do
  version '1.0.39'
  sha256 'b3d202885522e14e55263514d990b6ef34e43aeb19c5fb6b2039fb9f52079752'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
