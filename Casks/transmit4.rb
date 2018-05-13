cask 'transmit4' do
  version '4.4.13'
  sha256 '0d7095351378aa3c581de064f99fedecbfac683377048a4c0457976f5ce79f3b'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: '7df7a4642492b6512de70db5ec9f7acd72707e4a098e9db00ed4f604fb8b90df'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]

  caveats do
    discontinued
  end
end
