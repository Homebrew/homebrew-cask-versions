cask 'firefox-beta' do
  version '49.0b8'
  sha256 '3db6cc0af43d75d26630e2bd7860178089f9b75d5ee1b4186b011aecf2394ad5'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
