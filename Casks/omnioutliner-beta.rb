cask 'omnioutliner-beta' do
  version '4.4.x-r253921'
  sha256 '51d80d4e4889eab3b5c5aeeda8880d1814dbe3cb06dfd4b926aa445e9711721b'

  url "https://omnistaging.omnigroup.com/omnioutliner-4/releases/OmniOutliner-#{version}-Test.dmg"
  name 'OmniOutliner'
  homepage 'https://omnistaging.omnigroup.com/omnioutliner-4/'
  license :commercial

  app 'OmniOutliner.app'
end
