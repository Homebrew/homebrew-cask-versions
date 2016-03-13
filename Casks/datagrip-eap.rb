cask 'datagrip-eap' do
  version '145.404.2'
  sha256 'c83131497cd8d75acaa001b9dd4a9b602b6c09ce29d912cde9ddb908f4bd245c'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  name 'Datagrip EAP'
  homepage 'https://confluence.jetbrains.com/display/DBE/DataGrip+2016.1+EAP'
  license :commercial

  app 'Datagrip EAP.app'
end
