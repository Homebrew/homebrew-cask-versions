cask 'rstudio-preview' do
  version '1.2.1091'
  sha256 '9791812818f46ca767ed928eaac94d6ef497217836f7c42adf57b7957d00b3db'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
