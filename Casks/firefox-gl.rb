cask 'firefox-gl' do
  version '47.0.1'
  sha256 '91061c4b93b5ac6174f353959cf909802a8f804e1fd44f38749cdd6993850153'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
