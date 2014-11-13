cask :v1 => 'appcode-eap' do
  version '3.1.0'
  sha256 'e642a32107c9b6f0d2a9923ece6c50875f0fc66f6341ca8765af4c1696d65f65'

  url 'http://download.jetbrains.com/objc/AppCode-139.261.dmg'
  homepage 'http://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'
end
