cask 'vivaldi-snapshot' do
  version '1.0.357.5'
  sha256 'c389d4bf96067b52b1a5761d5c464cc5941c48f9c12d0061fda5b1a6a5c028dc'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'e64548d87462e3da813d582d7038d12a9196d97ea31df16ee2d311f55b4eb350'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
