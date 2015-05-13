cask :v1 => 'libreoffice43' do
  version '4.3.7'
  sha256 'ad8cb940218ac52e240a7e26e6b079da31eb6f6205da732802b445d474353e8f'

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
