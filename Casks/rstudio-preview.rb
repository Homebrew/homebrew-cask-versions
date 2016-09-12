cask 'rstudio-preview' do
  version '1.0.12'
  sha256 '4bb367c68f8cd4bb521b01ce9eee45fe7734939522df7e5e8d464d1e278c3521'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
