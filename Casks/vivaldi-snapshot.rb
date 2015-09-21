cask :v1 => 'vivaldi-snapshot' do
  version '1.0.279.3'
  sha256 '5dc9782713de80aa84e64efe32e0e4d855cd4e20ec9c386928adfa501bfbed6f'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '1ee37ac10a3af930939e34e61f4d70411ac96a20a6a7df8a592e397b7c677c59'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
