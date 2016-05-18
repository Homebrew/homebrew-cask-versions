cask 'pdfpenpro' do
  version '801.3,1463500658'
  sha256 '52d5370b47bc33d37f3aa94eb6e8bd14127158f5a2e95236d37b16997f133fee'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '65958504da8c8667cf8fc7aca82fde50638e840c17f369929f83d07d8d3fe3c9'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end
