class IntellijIdeaCommunityEapJdkBundled < Cask
  version '139.223.8'
  sha256 '00d561a21eb50db2c3365666ba3731b3639c394ec949de29a96320f51c1517f8'

  url "http://download-cf.jetbrains.com/idea/ideaIC-#{version}-jdk-bundled.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14 CE EAP.app'
end
