cask 'xamarin-studio-preview' do
  version '6.0.0.3668'
  sha256 '1ed29cac15b64a6bce00f81f7898ac21c55d4c04b33372c0bf61a1d11d5ee389'

  # download.xamarin.com/roslyn-preview was verified as official when first introduced to the cask
  url "http://download.xamarin.com/roslyn-preview/XamarinStudio-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fef545d50bd40a08d194b082bba6752cb27453d3381fd4c0504bdf18dd6ab2'
  name 'Xamarin Studio Preview'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  app 'Xamarin Studio.app'
end
