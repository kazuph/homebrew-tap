class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.16/ikesu-darwin-arm64"
      sha256 "12df5f2acb478abaf7e9e222b60ae862a90b4b061ea277b83064d7efe11be974"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.16/ikesu-darwin-amd64"
      sha256 "9f5c7d5d4a1c403978fdec5e2b2908248addd5addd3d10d2252be4d6bd509163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.16/ikesu-linux-arm64"
      sha256 "e31236aec188031b0e25499e8574b503efcb3359478613e86ff121c942b92fa8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.16/ikesu-linux-amd64"
      sha256 "8b526bdc9a7b85e7b47d6adb58f3949764cc7e3c64050276846c679126e066a6"
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
