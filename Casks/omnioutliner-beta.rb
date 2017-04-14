cask 'omnioutliner-beta' do
  version '4.6.x-r272149'
  sha256 'd6c9a34a50eec0fc7b7dabcf9216dcace818b23040ecad8f0de25e3279741a01'

  url "https://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'https://omnistaging.omnigroup.com/omnioutliner-4/'

  app 'OmniOutliner.app'
end
