cask 'java8' do
  version '8.202.03,07_nov_2018'
  sha256 'a5c312fbe58add9b124920d799f2e61a3608bd9b7872d67a76b279a845447975'

  url "https://download.java.net/java/early_access/jdk#{version.major}/b#{version.patch}/BCL/jdk-#{version.major}u#{version.minor}-ea-bin-b03-macosx-x86_64-#{version.after_comma}.dmg"
  name 'OpenJDK'
  homepage 'https://jdk.java.net/'

  pkg "JDK #{version.major} Update #{version.minor}.pkg"
end
