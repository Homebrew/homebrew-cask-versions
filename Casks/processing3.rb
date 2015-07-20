cask :v1 => 'processing3' do
  version '3.0a11'
  sha256 '9dea79e2147b47fb2bb3bf66299c564dfe5f3763aa086205102b5337557d5e4e'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
