cask 'pdfpenpro11' do
  version '1122.2,1585609999'
  sha256 'baab7a11eca4345ae466fdba8d43342bb762bc04203f3df234db42e1c314993a'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  name 'PDFpenPro 11'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
