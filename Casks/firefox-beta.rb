cask :v1 => 'firefox-beta' do
  version '36.0b4'
  sha256 'f9715f8fcf7fc5c3be20be43bf7c0b9a57b3768729bee7e16931ec0b40689f3f'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
