cask :v1 => 'jenkins-lts' do
  version '1.625.1'
  sha256 '073f6e101a767f8e32b4cffe3373cc6943c40568ef2b84dcaf29a26947a8d6c5'

  url "http://mirrors.jenkins-ci.org/osx-stable/jenkins-#{version}.pkg"
  name 'Jenkins'
  homepage 'https://jenkins-ci.org'
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
