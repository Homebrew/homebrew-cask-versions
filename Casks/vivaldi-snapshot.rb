cask 'vivaldi-snapshot' do
  version '1.14.1077.37'
  sha256 'f4e38954bf78b94379eb86cde3c592c14a1b90fd1830e51c931baee1ca4a1fea'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '0d04728ee64577cc8bf764fafb027c155e1ff59742c8e53328e1145bbb8042c9'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
