cask :v1 => 'omnipresence-beta' do
  version '1.4.x-r232733'
  sha256 'c21289a7a90b4efc8f0eb9cf3775bb4bb19145688229cd886718881b2c34377a'

  url "http://omnistaging.omnigroup.com/omnipresence/releases/OmniPresence-#{version}-Test.dmg"
  name 'OmniPresence Beta'
  homepage 'http://www.omnigroup.com/omnipresence'
  license :commercial

  app 'OmniPresence.app'

  depends_on :macos => '>= :yosemite'
end
