cask 'omnipresence-beta' do
  version '1.4.x-r233232'
  sha256 '2366e49d19d9e9d53967f18c6ab0781d5478db24c883921300f62040dd14f119'

  url "http://omnistaging.omnigroup.com/omnipresence/releases/OmniPresence-#{version}-Test.dmg"
  name 'OmniPresence Beta'
  homepage 'https://omnistaging.omnigroup.com/omnipresence/'

  depends_on macos: '>= :yosemite'

  app 'OmniPresence.app'
end
