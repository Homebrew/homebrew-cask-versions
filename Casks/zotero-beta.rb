cask "zotero-beta" do
  version :latest
  sha256 :no_check

  url "https://www.zotero.org/download/standalone/dl?platform=mac&channel=beta"
  name "Zotero"
  desc "Free, easy-to-use tool to help you collect, organize, cite, and share research"
  homepage "https://www.zotero.org/"

  conflicts_with cask: "zotero"

  app "Zotero.app"
end
