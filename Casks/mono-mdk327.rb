class MonoMdk327 < Cask
  url 'http://download.mono-project.com/archive/3.2.7/macos-10-x86/MonoFramework-MDK-3.2.7.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com/'
  version '3.2.7'
  sha256 '261a9ed737f2e8185149857c1a8238bf26a32e7e28ae412c668841fcd77ebfcb'
  install 'MonoFramework-MDK-3.2.7.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
