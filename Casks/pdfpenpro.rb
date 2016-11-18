cask 'pdfpenpro' do
  version '821.5,1476995246'
  sha256 'fef903eb1bdc2d882a04e5e690999d6f121a9b56d86e833663be7975c256c076'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '2d618379f9d3155f61363b811cda6d2eafec89b95c67b6d37139b66261988ac5'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
