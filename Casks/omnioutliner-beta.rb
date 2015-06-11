cask :v1 => 'omnioutliner-beta' do
  version '4.3.x-r235551'
  sha256 '8584a222621871aa178d27ab5ebba3da042f1ef8b269390148c5e26fe0b8bc50'

  url "http://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version.sub(%r{.*-},'')}-Test.dmg"
  name 'OmniOutliner'
  homepage 'http://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
