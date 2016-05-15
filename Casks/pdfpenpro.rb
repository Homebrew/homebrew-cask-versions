cask 'pdfpenpro' do
  version '800.19,1461645430'
  sha256 '56b1cef046b8d8961987771217bf19c67cccdf8d9ccf999410fa2fcffeb3e7f7'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '6a1f150c4418765813e37e6abd23cee562d113fa5bded2b5d65e022463851ae3'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end
