cask 'rstudio-preview' do
  version '0.99.1285'
  sha256 '48cd158c885d7a4ffcfd94a742fba425130dc023cf4d30dde838b5f3cad2852d'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
