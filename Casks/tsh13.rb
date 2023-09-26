cask "tsh13" do
  version "13.4.0"
  sha256 "4d6d27492bf7ddf6a5ef3482dee404a9dfc060b3f06a161dca4d9a2471d57b63"

  url "https://cdn.teleport.dev/tsh-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport TSH (v13)"
  desc "SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/tsh[._-]v?(13(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with formula: "teleport",
                 cask:    "tsh"

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"

  zap trash: "~/.tsh"
end
