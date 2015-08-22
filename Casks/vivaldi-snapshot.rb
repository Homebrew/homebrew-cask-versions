cask :v1 => 'vivaldi-snapshot' do
  version '1.0.252.3'
  sha256 '7538074ece98ee25b5852b193ae91bf70b6c47a1b962456dfb7616a8598260a6'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '215f9890bfbdeea9e383bd08f162d44e02a1af85130b1af326de24c13b9a1e1f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
