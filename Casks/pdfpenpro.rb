cask 'pdfpenpro' do
  version '820.3,1475632105'
  sha256 '94e2acf3c6e44e9716b56ffb5270fb333db0194aafb1ffb249a8ff511c8651c0'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '6e060d2fdfa8f12b27fe43fb5fd3f5f827f4d9911b90c7d310fbb971c6586147'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'

  app 'PDFpenPro.app'
end
