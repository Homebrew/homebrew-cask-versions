cask 'vivaldi-snapshot' do
  version '1.8.770.38'
  sha256 'eab0e072e6d66edd51488500b93d8c99a9c1fa0bb1585ef0d3c8fa86abdec8cb'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'be9bc8c0401ed80865b4190b076e566a34ca8463a33ab55970b135fca33f4a80'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
