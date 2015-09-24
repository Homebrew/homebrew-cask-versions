cask :v1 => 'processing3' do
  version '3.0b7'
  sha256 'a2268b78ac7cf98bcfb45791433c986bba441982891e75632e5ef8b3c3a2e447'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
