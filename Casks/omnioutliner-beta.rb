cask :v1 => 'omnioutliner-beta' do
  version '4.4.x-r247831'
  sha256 '587c0cee55c2459fb1ad03aeee46eaa5a9cdb02ebde20b298356ac27e10dc262'

  url "http://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'http://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
