cask :v1 => 'processing3' do
  version '3.0b3'
  sha256 '31c4ee4ff43c9c8137ad33286b74302c60b28cd3e0b6ddc7498491165198acdc'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
