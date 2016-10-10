cask 'omnioutliner-beta' do
  version '4.5.x-r254424'
  sha256 'cb509aeb8c07e758dc90bd40075e67fd10422f8706d9a4c87f311e3b519af2de'

  url "https://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'https://omnistaging.omnigroup.com/omnioutliner-4/'

  app 'OmniOutliner.app'
end
