cask :v1 => 'vivaldi-snapshot' do
  version '1.0.249.12'
  sha256 '1d6f5526207b8407b2a97fec4fa02a0257b205dc8d808e3e4571fcb38222a134'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '0e80c54953c95a1d9140168a49ea31675679740054baa465adabc26dc8eae93b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
