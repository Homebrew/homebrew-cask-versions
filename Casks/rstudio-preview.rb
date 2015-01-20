cask :v1 => 'rstudio-preview' do
  version :latest
  sha256 :no_check

  url "http://tiny.cc/latestrstudiopreview"
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :unknown

  app 'RStudio.app'
end
