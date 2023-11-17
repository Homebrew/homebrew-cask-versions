cask "tsh13" do
  version "13.4.9"
  sha256 "8745010d05380c56a75e37cf3c3644ed026fd95af61d475d4675098a64a67039"

  url "https://cdn.teleport.dev/tsh-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport TSH (v13)"
  desc "SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/tsh[._-]v?(13(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask:    "tsh",
                 formula: "teleport"

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"

  zap trash: "~/.tsh"
end
