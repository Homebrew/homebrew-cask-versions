cask 'vivaldi-snapshot' do
  version '1.7.735.39'
  sha256 'a20cc088a502ca6fc829c3c9218c5ce85096284583d6502ec129e08febe97119'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7f322b89efcdd172882b514cfc1b0674877a1181d61cfd7a215fd4d78ea3d6ec'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
