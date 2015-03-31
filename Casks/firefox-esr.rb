cask :v1 => 'firefox-esr' do
  version '31.5.3'
  sha256 '90676a07495781cf5bb3e758011a156da0ba74bb6bf994a36e96ec6243f6902a'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
