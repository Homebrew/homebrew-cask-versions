cask "tsh13" do
  version "13.4.5"
  sha256 "660965b2118b7cbb6fd94f167d57ccd92918692b19075a2d08660d0d3532071e"

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
