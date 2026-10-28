class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.23/ikesu-darwin-arm64"
      sha256 "be5870aaf76ae6384c8c443d7a09d8141d903da2e74c550495b978727e22acc8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.23/ikesu-darwin-amd64"
      sha256 "03e96e8702885c75a96d2c6ce8705dc896739943a8e579a797631a1e5bb062fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.23/ikesu-linux-arm64"
      sha256 "3ccde32343914f2961e40fec8b34515f317c45070fcd132a2e1b58bfb7a8478b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.23/ikesu-linux-amd64"
      sha256 "60c41ab68a237fa82780a1a03f5fdd05811ec8a937feb143ab7068903d15d20c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
