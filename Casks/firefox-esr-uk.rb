cask :v1 => 'firefox-esr-uk' do
  version '31.5.0'
  sha256 '60a56a5ca27fba10c5cb336aeadc75996d410e039aeb3ef738bdc82a5fdb4aa1'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
