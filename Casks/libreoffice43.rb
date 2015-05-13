cask :v1 => 'libreoffice43' do
  version '4.3.6'
  sha256 '02b78ed4e58090af93782fa6986493c115e92eae9bbc878c26cbd12633735445'

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
