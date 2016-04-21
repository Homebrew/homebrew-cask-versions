cask 'rstudio-preview' do
  version '0.99.1130'
  sha256 '919b96d24d6ef70dd9a13d018c26479030e81223b5ac94d1ec951b895cf70d0f'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
