cask :v1 => 'processing3' do
  version '3.0b4'
  sha256 '093940448440e7f52d134e16bd3ad08ea1440f526dd49b8f727a3aa204999c24'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
