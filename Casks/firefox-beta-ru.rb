cask 'firefox-beta-ru' do
  version '47.0b9'
  sha256 '2ca6e07e6a94493f20a2e0bdb060854a74f4230607710735189b8e07009e7e53'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
