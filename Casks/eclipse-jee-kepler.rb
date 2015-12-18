cask 'eclipse-jee-kepler' do
  version '4.3.2'
  sha256 'd18c5b4249a782a36c2d7bb377871393acd5dd552a195fc49b5b944f04874fbf'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-macosx-cocoa-x86_64.tar.gz'
  name 'Eclipse'
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'eclipse/Eclipse.app'
end
