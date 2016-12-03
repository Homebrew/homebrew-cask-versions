cask 'mono-mdk-preview' do
  version '4.8.0.371'
  sha256 '2313fa4574e5f37c9c7fc6db0aaf0f2124ff37404571cf988b8c89cfbba06ddc'

  url "https://download.mono-project.com/archive/#{version.sub(%r{\.[^.]*$}, '')}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
