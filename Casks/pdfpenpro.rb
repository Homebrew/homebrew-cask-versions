cask 'pdfpenpro' do
  version '734.0,1451347715'
  sha256 'ee8c4b740633f86a4c1cedd9b0dcd5225a2569dc1b98d788fcea9e164d607daf'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          :checkpoint => '247e84eb90cb0793ad613c628dab5aa62e1dee36fd2cac4a24d37e7d4f31f0c5'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end
