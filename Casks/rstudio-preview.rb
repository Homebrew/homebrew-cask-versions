cask 'rstudio-preview' do
  version '1.0.9'
  sha256 'd2f7283d2df4c4123ed3ea01bacdbb3d32d8e46b31ca8cd5baa588398da7655b'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
