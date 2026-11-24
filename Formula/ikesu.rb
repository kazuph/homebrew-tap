class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.184"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.184/ikesu-darwin-arm64"
      sha256 "2c14917cb212f39c95a9979209c1b4ba65a3a3328cf1af2a25bad086c5f1636f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.184/ikesu-darwin-amd64"
      sha256 "fc15684f237637081dde53531deed722700fe3d65af93f02c32466ac2eb1de78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.184/ikesu-linux-arm64"
      sha256 "6294b12a84b624773b12e991dcc45d4730c3390950eea2ce07421172d05143c8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.184/ikesu-linux-amd64"
      sha256 "28aae8029303b98050e94059bbcce9c9441b1c2a039997334946681f28128f0a"
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
