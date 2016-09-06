cask 'rstudio-preview' do
  version '1.0.6'
  sha256 'a7473b64caa778bcaf42ed63257346abd00f3d85659851ee8eb6851a96cf758a'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
