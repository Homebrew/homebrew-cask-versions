cask 'firefox-it' do
  version '48.0.1'
  sha256 '9e83393dd749d381ca01cf95ab849a38fdf97c09bf5afd023249e7b7fc1fdf89'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
