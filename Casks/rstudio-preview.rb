cask 'rstudio-preview' do
  version '1.0.143'
  sha256 '8db4f32f9e2758117c2d294f4f76c760d1851dfe04ad783fae2cf459864ea001'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
