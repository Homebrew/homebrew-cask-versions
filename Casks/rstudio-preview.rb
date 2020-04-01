cask 'rstudio-preview' do
  version '1.3.929'
  sha256 '44e0ecba09eafbbb1aaf7237d87391f66c70bf7f4e3070e1140a31c5a1515278'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
