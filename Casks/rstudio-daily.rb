cask :v1 => 'rstudio-daily' do
  version :latest
  sha256 :no_check

  url 'http://www.rstudio.org/download/latest/daily/desktop/mac/RStudio-latest.dmg'
  name 'RStudio'
  homepage 'https://www.rstudio.org/download/daily/desktop/mac/'
  license :affero

  app 'RStudio.app'
  
  zap :delete => '~/.rstudio-desktop'
end
