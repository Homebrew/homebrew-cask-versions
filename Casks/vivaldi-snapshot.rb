cask 'vivaldi-snapshot' do
  version '1.5.604.4'
  sha256 '494981eecafba0400354de6f67ea62418d3dc0acdab19e854f52b24eea04ba1b'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '48c23cc11704495d58ffa3ae420c47c18a16f48a4a9dc5f51c76b10acc41536e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
