cask 'omnioutliner-beta' do
  version '4.4.x-r250030'
  sha256 '2b8c51ef4d5321b7701858264ea5f0da8358281259d8a1c94d1ac0d55792ba7e'

  url "http://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'http://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
