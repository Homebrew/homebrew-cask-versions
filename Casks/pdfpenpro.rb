cask 'pdfpenpro' do
  version '810.2,1473895032'
  sha256 '3fe39eb7e623f6f1fb113559a030472b01ba66e43aaa31e9b7aa4ccbb0df254b'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '84211415498c54a362f08479e3e213cd737de771b5b42082601e92a0c9545216'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end
