cask 'rstudio-preview' do
  version '1.1.414'
  sha256 '68b8597ef8b4625805e90cda6a214bff4c3d8e15434ce99868465da57936bbc9'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
