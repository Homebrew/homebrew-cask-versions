cask "macfuse-dev" do
  version "4.2.5"
  sha256 "a94af08049fe480453e02acb57334f7c8dcc47d68f3f3fe341bf5aadda418dff"

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
