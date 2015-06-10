cask :v1 => 'processing3' do
  version '3.0a10'
  sha256 'af6134c42639ca81e48fc90ff8c5b5033e8f21e702d616b48555d3691a6c484e'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
