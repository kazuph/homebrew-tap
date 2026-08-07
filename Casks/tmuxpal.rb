cask "tmuxpal" do
  version "0.9.17"
  sha256 "5de939d89c6d88fb85127297e5ee68d5b09c480ae3f79378ee306b51570b8d99"

  url "https://github.com/kazuph/TmuxPal/releases/download/v#{version}/TmuxPal-#{version}.dmg"
  name "TmuxPal"
  desc "Menu bar pal showing tmux pane activity and Claude/Codex usage limits"
  homepage "https://github.com/kazuph/TmuxPal"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "TmuxPal.app"

  uninstall quit: "dev.tmuxpal"

  zap trash: [
    "~/Library/Application Support/tmuxpal",
    "~/Library/Preferences/dev.tmuxpal.plist",
  ]
end
