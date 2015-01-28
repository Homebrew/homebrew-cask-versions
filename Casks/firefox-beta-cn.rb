cask :v1 => 'firefox-beta-cn' do
  version '36.0b4'
  sha256 '01b2861983fcffbe96070a236620ceaddc166af971db001788b64bf2c51e7a81'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
