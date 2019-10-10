cask 'rstudio-preview' do
  version '1.2.5005'
  sha256 '06854ce4e2703899c6517f141aaf245ff1ba853a280d5937932a7b9b7aaa6c4e'

  # rstudio-ide-build.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://rstudio-ide-build.s3.amazonaws.com/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
