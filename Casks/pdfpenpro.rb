cask 'pdfpenpro' do
  version '802.4,1467742433'
  sha256 '8fef13e48219c785695321ea65e41323c930d38554622a98d80583510a1667c0'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: 'c92f20f25e9b0388f4e316bf913a307e3ad06821549b5bfe6f53830eed8baaf8'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end
