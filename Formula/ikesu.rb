class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.79/ikesu-darwin-arm64"
      sha256 "d777c6a2e8986ae2dd56daae1d442ee82b7efeb4cbe8f0878c3cdf06b519687c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.79/ikesu-darwin-amd64"
      sha256 "655b19b658c1cc4f7837008d30e23c6ec37bc1f42d5a45eb9d12afc7fa958991"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.79/ikesu-linux-arm64"
      sha256 "5272ff2ea878846d15696fd78adf6957dbbf6f6f84e12fc52ea2591155bbdae1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.79/ikesu-linux-amd64"
      sha256 "74e305bf117364475581aabafcba8825303e8ae0d87cb1340b1dfd7969bb0005"
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
