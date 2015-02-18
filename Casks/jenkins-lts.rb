cask :v1 => 'jenkins-lts' do
  version '1.580.2'
  sha256 '1d7e7e906a7475fbde9bf0701c688e1cb19c927533f0f49d4938fa03f60dc1fc'

  url "http://mirrors.jenkins-ci.org/osx-stable/jenkins-#{version}.pkg"
  name 'Jenkins'
  homepage 'http://jenkins-ci.org/'
  license :cc

  pkg "jenkins-#{version}.pkg"
  binary '/Library/Application Support/Jenkins/jenkins-runner.sh', :target => 'jenkins-runner'

  uninstall :script    => '/Library/Application Support/Jenkins/Uninstall.command',
            :pkgutil   => 'org.jenkins-ci.*pkg',
            :launchctl => 'org.jenkins-ci'

  zap :delete => '/Library/Preferences/org.jenkins-ci.plist'

  conflicts_with :formula => %w{
                                jenkins
                                homebrew/versions/jenkins-lts
                               },
                 :cask    => 'jenkins'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java

    You can change the launch parameters for #{token} using "defaults",
    as described in
      https://wiki.jenkins-ci.org/display/JENKINS/Thanks+for+using+OSX+Installer

    Alternatively, you can directly run #{token} with custom parameters, eg
      java -jar /Applications/Jenkins/jenkins.war -XX:PermSize=$MIN_PERM_GEN --httpPort=$HTTP_PORT

    For more options, see
      https://wiki.jenkins-ci.org/display/JENKINS/Starting+and+Accessing+Jenkins
  EOS
end
