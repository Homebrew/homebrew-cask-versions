class IntellijIdeaUltimateEapJdkBundled < Cask
  version '139.223.8'
  sha256 '8e132f5f271799966f5b7ac847bf761168990f91e3967c270f582f0237b7aa58'

  url "http://download-cf.jetbrains.com/idea/ideaIU-#{version}-jdk-bundled.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14.app'
end
