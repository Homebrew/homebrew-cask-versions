cask :v1 => 'vivaldi-snapshot' do
  version '1.0.334.3'
  sha256 '4bb14733546913e758612b29ed59720edba64d182c648a1dc4cef79d00a4b40d'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'ba7dd01561301d5206a4806178e47ec4dfaa6e02d7a8841674c8f4ad35d27f4f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
