cask 'vivaldi-snapshot' do
  version '1.10.845.3'
  sha256 'd542f8de1ccf1ee62353f617e6e11284e5eb8772bff00733b2cdca550fbd4520'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'dc48175d5d62efbbec9fa297e50788343de90a6d80750f924bd91b2985f3c08e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
