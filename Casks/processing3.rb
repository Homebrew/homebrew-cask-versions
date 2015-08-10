cask :v1 => 'processing3' do
  version '3.0b2'
  sha256 '5d0184e4e078244ac16627c3134c7cf37b87805a6623532cc907df33922b87ae'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
