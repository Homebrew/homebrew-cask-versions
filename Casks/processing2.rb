cask 'processing2' do
  version '3.3.5'
  sha256 '8fae957b6ccb62254e3e4cdf04b025bee238c3c56da609ce22206b37122f3501'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '0880e0113f935c0ee0591cc7051d662f8fbb640de72a3dcac0d68f3b4e9445a1'
  name 'Processing'
  homepage 'https://processing.org/'

  conflicts_with cask: 'processing'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
