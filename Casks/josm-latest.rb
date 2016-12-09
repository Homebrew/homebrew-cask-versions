cask 'josm-latest' do
  version :latest
  sha256 :no_check

  url 'https://josm.openstreetmap.de/jenkins/job/JOSM/jdk=JDK8/lastSuccessfulBuild/artifact/dist/josm-custom-macosx.zip'
  name 'josm latest'
  homepage 'https://josm.openstreetmap.de/'

  # Renamed to avoid removing tested (stable) version of JOSM
  app 'JOSM.app', target: 'JOSM-latest.app'
end
