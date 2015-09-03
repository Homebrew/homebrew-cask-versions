cask :v1 => 'vivaldi-snapshot' do
  version '1.0.264.3'
  sha256 '0dbe513500ca0c930682ff711e00c602918f7a947345b369f3453ca2ef35c749'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '8b2cc85c64f310743a61f2038c1269d31cba67a027305a606305338f294e185a'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
