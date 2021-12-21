cask "macfuse-dev" do
  version "4.2.4"
  sha256 "82a2c30b3a7bf56aa2755c0c192fb50d9eecc3fe42505ab4e8679b50306188bd"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/osxfuse/osxfuse/"
  name "macFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  conflicts_with cask: "macfuse"

  pkg "Extras/macFUSE #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
    "io.macfuse.installer.components.core",
    "io.macfuse.installer.components.preferencepane",
  ]

  caveats do
    kext
  end
end
