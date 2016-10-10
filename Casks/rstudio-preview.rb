cask 'rstudio-preview' do
  version '1.0.35'
  sha256 '78f73d46ffac877e1dd6f2eddc898a2b371431d634852f76ac59347848f29bd3'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
