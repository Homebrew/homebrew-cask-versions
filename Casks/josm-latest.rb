cask 'josm-latest' do
  version :latest
  sha256 :no_check

  url 'https://josm.openstreetmap.de/jenkins/job/JOSM/jdk=JDK8/lastSuccessfulBuild/artifact/dist/josm-custom-macosx.zip'
  name 'josm latest'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
