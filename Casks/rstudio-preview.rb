cask 'rstudio-preview' do
  version '1.2.1206'
  sha256 '2ecb5dd87ca38489f241a969636ee1dafabc0ea48a7cdf9410e3ebaf8fcce545'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
