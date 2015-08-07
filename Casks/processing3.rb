cask :v1 => 'processing3' do
  version '3.0b1'
  sha256 '1c8a164af73a66e00f24e935bf65339892e4dae118388135cc70436d94183bac'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
