cask :v1 => 'omnioutliner-beta' do
  version '4.2.x-r233347'
  sha256 '5d889468f569853496a4a426a6fddc84befc665e501ae89a8e67535805b0c475'

  url "http://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'http://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
