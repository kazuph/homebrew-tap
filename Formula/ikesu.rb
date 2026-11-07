class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.93/ikesu-darwin-arm64"
      sha256 "39a283dcdd2940c47e9e8f68638f60136fdb33045c3125956cc2c86f9b99a881"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.93/ikesu-darwin-amd64"
      sha256 "272ae54bfb4d7e278ac6c1b584f56eb6dc393e8987d63aeae619ffe7731e7c20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.93/ikesu-linux-arm64"
      sha256 "1f1573e5872178ce7d390881d347eef83a8ed94e0ce9918b09e4c3a420c71f03"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.93/ikesu-linux-amd64"
      sha256 "08ad21869dbf24f5830b4abd778cef4c5d45badaf8e906e2586dc7489120c206"
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
