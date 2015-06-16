cask :v1 => 'firefox-esr' do
  version '38.0.1'
  sha256 '04bda1d76edc6d92faf418f464f969067fa73e4f0b52d966363db6af18ccd274'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
