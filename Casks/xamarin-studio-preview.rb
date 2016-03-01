cask 'xamarin-studio-preview' do
  version '6.0.0.3668'
  sha256 '1ed29cac15b64a6bce00f81f7898ac21c55d4c04b33372c0bf61a1d11d5ee389'

  url "http://download.xamarin.com/roslyn-preview/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '855d95a330efdd9cc13cbaabc6e49dfcda111db3b16cbc6345e3a0d17e769972'
  name 'Xamarin Studio Preview'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
