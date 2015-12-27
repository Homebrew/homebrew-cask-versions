cask 'omnioutliner-beta' do
  version '4.4.x-r251827'
  sha256 'c2be9c83f1009b6407aea2b6b35da8210b8545a5acfe7aafe0853082b414d056'

  url "https://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'https://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
