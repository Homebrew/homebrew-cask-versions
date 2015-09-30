cask :v1 => 'omnioutliner-beta' do
  version '4.4.x-r244801'
  sha256 '45b7636ef8ab3c28aad9280fdf5317b7bf2ddda559673e1ae331b4fa982438e5'

  url "http://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'http://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
