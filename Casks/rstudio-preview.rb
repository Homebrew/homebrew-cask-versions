cask 'rstudio-preview' do
  version '0.99.1230'
  sha256 '55b01a4a821584baad720da64378562f3b45a9207dd5f0e34678b37fb855f049'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
