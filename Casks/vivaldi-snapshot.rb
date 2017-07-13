cask 'vivaldi-snapshot' do
  version '1.11.904.3'
  sha256 'a540c345625643a1a4fdbbe32a690ef847733173f045d6f4a8991e6b031f2d8c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '446dafcfdbe27ee63733254cad8446b85df015ce47c4ad1e72bef5a3b7167f12'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
