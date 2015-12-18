cask 'mono-mdk327' do
  version '3.2.7'
  sha256 '261a9ed737f2e8185149857c1a8238bf26a32e7e28ae412c668841fcd77ebfcb'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  name 'Mono'
  homepage 'http://mono-project.com/'
  license :oss

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
