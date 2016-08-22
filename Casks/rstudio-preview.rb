cask 'rstudio-preview' do
  version '0.99.1290'
  sha256 '5aa5d4bd686c5a365091447d943fd0aaebebec794d9f7c4565ef0f4958de79ce'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
