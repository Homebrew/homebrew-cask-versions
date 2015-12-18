cask 'scala-ide-milestone' do
  version '4.2.0-rc3'

  if Hardware::CPU.is_32_bit?
    url "http://downloads.typesafe.com/scalaide-pack/#{version}-luna-211-20141210/scala-SDK-#{version}-2.11-macosx.cocoa.x86.zip"
    sha256 'c23ed7572771fe330b1aef1827f2a32a63a1b1619d8bf1af8df7108ec9e38bf7'
  else
    url "http://downloads.typesafe.com/scalaide-pack/#{version}-luna-211-20141210/scala-SDK-#{version}-2.11-macosx.cocoa.x86_64.zip"
    sha256 '9a49e95bf938509bf9717558c97e61b86bb0ff790b3dca1043883cdbab870808'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
