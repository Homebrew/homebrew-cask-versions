# frozen_string_literal: true

cask "whatsapp-beta" do
  version "2.2135.1"
  sha256 "d082d2237792997141295e7c19daee73eff02425ee982a72bb8a5ca9a29a85d2"

  url "https://web.whatsapp.com/desktop-beta/mac/files/release-#{version}.zip"
  name "WhatsApp Beta"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  app "WhatsApp.app"
end
