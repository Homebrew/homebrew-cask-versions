cask 'xamarin-studio-preview' do
  version '6.0.0.3668'
  sha256 '1ed29cac15b64a6bce00f81f7898ac21c55d4c04b33372c0bf61a1d11d5ee389'

  url "http://download.xamarin.com/roslyn-preview/XamarinStudio-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477c85901ee0146c2f34467c8cfc1f3a94bcb96c5467bb8b5cfc1ed765b3676e'
  name 'Xamarin Studio Preview'
  homepage 'https://www.xamarin.com/visual-studio-for-mac'

  app 'Xamarin Studio.app'
end
