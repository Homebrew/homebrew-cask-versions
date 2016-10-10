cask 'mono-mdk-preview' do
  version '4.3.0.2114'
  sha256 :no_check # required as upstream package is updated in-place

  # download.xamarin.com was verified as official when first introduced to the cask
  url "http://download.xamarin.com/roslyn-preview/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://mono-project.com'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
