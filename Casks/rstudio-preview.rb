cask 'rstudio-preview' do
  version '1.0.33'
  sha256 '8aa17732859c9df8ccfdfa8c7d500df2087edad3c00bfe7bde29b726789e9928'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
