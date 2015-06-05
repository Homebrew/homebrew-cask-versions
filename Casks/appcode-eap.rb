cask :v1 => 'appcode-eap' do
  version '3.2.0'
  sha256 '2dd8a0a9246067ae6e092b9934cbadac6730a74fe400c8929b09792a0c0cda83'

  url 'http://download.jetbrains.com/objc/AppCode-141.1399.2.dmg'
  homepage 'http://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'
end
