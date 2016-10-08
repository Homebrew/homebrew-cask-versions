cask 'firefox-beta-en-gb' do
  version '49.0b3'
  sha256 'd35d2ad4915ad2d4a6839434ea1042c473a47a61ec028704b3b116bf25abc396'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
