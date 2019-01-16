cask 'java8' do
  version '8.202.03,07_nov_2018'
  sha256 'fa07eee08fa0f3de541ee1770de0cdca2ae3876f3bd78c329f27e85c287cd070'

  url "https://download.java.net/java/early_access/jdk#{version.major}/b#{version.patch}/BCL/jdk-#{version.major}u#{version.minor}-ea-bin-b03-macosx-x86_64-#{version.after_comma}.dmg"
  name 'OpenJDK'
  homepage 'https://jdk.java.net/'

  pkg "JDK #{version.major} Update #{version.minor}.pkg"
end
