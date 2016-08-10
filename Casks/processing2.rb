cask 'processing2' do
  version '2.2.1'
  sha256 '8c237b3eb50626e8ffc648bfdeddaa18ceffbd6a48f8fec77a8eab5b774971fc'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'b731bdafbc7e9c7c9026d6a8c124c0dfc48d18f502fd7ae89cc445dc0bd02bee'
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  conflicts_with cask: 'processing'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
