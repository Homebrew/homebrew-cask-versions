cask 'pdfpenpro' do
  version '830.1,1481079889'
  sha256 'eed9bb19ac40d3c9dd1d23691105c6df7fd3563cbd7fbf2fc4a0cff998b0336a'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: 'b9d35c5c6c5c3313f3fa545d584be71fd00600f13df780bbd76bc89b703ca6ea'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
