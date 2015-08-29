cask :v1 => 'processing3' do
  version '3.0b5'
  sha256 'ea684345279ec59dd749a2b7fb103eecf5d69576472e438adccdf3f3d9c2c43a'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
