cask 'jdk-mission-control-snapshot' do
  version :latest
  sha256 :no_check

  url 'https://ci.adoptopenjdk.net/view/JMC/job/jmc-build/job/master/lastSuccessfulBuild/artifact/target/products/org.openjdk.jmc-macosx.cocoa.x86_64.tar.gz'
  name 'JDK Mission Control'
  homepage 'https://adoptopenjdk.net/jmc.html'

  app 'JDK Mission Control.app'

  caveats do
    depends_on_java '11'
  end
end
