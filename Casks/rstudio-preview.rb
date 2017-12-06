cask 'rstudio-preview' do
  version '1.1.393'
  sha256 'a3218b558b9cc51ff4aeb9293050153f19fb55ab3580a2a3a63351cfea7816d5'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
