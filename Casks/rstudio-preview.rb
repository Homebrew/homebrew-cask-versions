cask 'rstudio-preview' do
  version '1.0.16'
  sha256 'ebecfd21fa1563ff3bf3d619ae574ccba46baa6f767039c764bea53e8568cbf3'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
