class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.182"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.182/ikesu-darwin-arm64"
      sha256 "6827261f7d3ebb38279560a0208c44e1672a5524766864a8a9f09f3c5e4588a4"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.182/ikesu-darwin-amd64"
      sha256 "7250c2004a26b3873232eaeced5adb5cd3ff5306725b0c3159e538f2c3fbd568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.182/ikesu-linux-arm64"
      sha256 "ec63737aacdd5fafe24c93e8340a9c44dce6fed0739adcda92fbed9f04ca050c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.182/ikesu-linux-amd64"
      sha256 "7bd685c59514ec03943ddbab1025f05d86d416a74e29afcf346a30496bcc1546"
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
