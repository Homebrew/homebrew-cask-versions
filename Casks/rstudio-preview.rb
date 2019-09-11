cask 'rstudio-preview' do
  version '1.2.1578'
  sha256 '9874c0c932e71ab106fa95476403573c3dd6046a3c64b9c0084adc6201bb51c0'

  # rstudio-ide-build.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://rstudio-ide-build.s3.amazonaws.com/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
