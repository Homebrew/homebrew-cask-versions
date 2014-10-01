class IntellijIdeaUltimateEap < Cask
  version '14-PublicPreview'
  sha256 '4995c98608506c02348b4dfc0507a6a791c9db0ee555916edfe2fef9aa2dc85a'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :unknown

  app 'IntelliJ IDEA 14 EAP.app'
end
