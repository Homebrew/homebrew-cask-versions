cask :v1 => 'firefox-beta' do
  version '36.0b5'
  sha256 '64cd7bca75bd2e477e51470ff0a314b5d18a206c0b83ff582fc4424ab231465a'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
