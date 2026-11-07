cask "agentpal" do
  version "0.10.0"
  sha256 "e08ca38205c617560f314292f96181e340406c426552d7cfb4dd8a244085073f"

  url "https://github.com/kazuph/AgentPal/releases/download/v#{version}/AgentPal-#{version}.dmg"
  name "AgentPal"
  desc "Menu bar pal showing coding agent activity and Claude/Codex usage limits"
  homepage "https://github.com/kazuph/AgentPal"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentPal.app"

  uninstall quit: "dev.agentpal"

  zap trash: [
    "~/Library/Application Support/agentpal",
    "~/Library/Preferences/dev.agentpal.plist",
  ]
end
