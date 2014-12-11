cask :v1 => 'scala-ide-milestone' do
  version '4.0.0-rc4'

  if Hardware::CPU.is_32_bit?
    url "http://downloads.typesafe.com/scalaide-pack/#{version}-luna-211-20141210/scala-SDK-#{version}-2.11-macosx.cocoa.x86.zip"
    sha256 '767564ede971095f91c265f05c96daca0816722d5784f490bd326b9a7b6c222e'
  else
    url "http://downloads.typesafe.com/scalaide-pack/#{version}-luna-211-20141210/scala-SDK-#{version}-2.11-macosx.cocoa.x86_64.zip"
    sha256 'd39854dafd0a6b573e8491f4e44abac75d78154cf1226fa52ac2e2ce246ef0ae'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
