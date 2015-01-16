cask :v1 => 'xmlmind-editor352' do
  version '3.5.2'
  sha256 '94465404d8ebd0e4487231e0d55ba2e0431c6108e5cd81ad7bf0618d75fc3c6d'

  url 'http://www.xmlmind.com/archive/xmleditor/3.5.2/xxe-std-3_5_2.dmg'
  name 'XMLMind XML Editor'
  homepage 'http://www.xmlmind.com/xmleditor/'
  license :commercial

  depends_on :cask => 'java6'

  app 'xxe-std-3_5_2/XMLEditor.app'
end
