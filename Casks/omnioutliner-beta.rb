cask :v1 => 'omnioutliner-beta' do
  version '4.3.x-r238997'
  sha256 '7abf46e9183ba617edc9d80e7587a32e3e555d5ca5868668f5bb7759f7b472c5'

  url "http://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'http://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
