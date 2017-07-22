cask 'transmit4' do
  version '4.4.13'
  sha256 '0d7095351378aa3c581de064f99fedecbfac683377048a4c0457976f5ce79f3b'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}",
          checkpoint: '87bb78821ca9d971cbcbdcdc70e69b9210fedbdea676f3b6c70855c593754101'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
