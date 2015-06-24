cask :v1 => 'appcode-eap' do
  version '3.2.0'
  sha256 'fa78dc8e2a7430e7173cecec7b6e369f3d2cf442facd7ee0df46592788b00715'

  url 'http://download.jetbrains.com/objc/AppCode-141.1689.23.dmg'
  homepage 'http://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'
end
