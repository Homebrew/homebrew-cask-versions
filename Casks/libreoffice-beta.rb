cask :v1 => 'libreoffice-beta' do
  version '5.0.0.0.beta1'
  sha256 'f932b8d3fc8bf86a6aba5363982d3d14197f176325b2ffe4ce69bea5938288b7'
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.0.beta')[0]}/mac/x86_64/LibreOfficeDev_#{version}_MacOS_x86-64.dmg"
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
