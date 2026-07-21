cask "sagasu" do
  version "1.0.3"
  sha256 "a4061b5e00d3fa372b88ee646813a75cd641fc39c6481905384abf5ddc72927e"

  url "https://github.com/kazuph/sagasu/releases/download/v#{version}/Sagasu-#{version}.dmg"
  name "Sagasu"
  desc "macOS launcher for apps, files, notes, web routes, and clipboard history"
  homepage "https://github.com/kazuph/sagasu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sagasu.app"
end
