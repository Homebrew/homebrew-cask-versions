cask 'eclipse-java-luna' do
  version '4.4.2'
  sha512 '00e7890cf46d6b8ada002f39f7d2ed576c52eb87039b4e2ce92eeffce9866fea'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
