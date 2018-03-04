cask 'rstudio-preview' do
  version '1.1.430'
  sha256 '67d5cdb6c960f9322979d2219d48267be29b1c99a78714c1228fb4e904a7ed23'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
