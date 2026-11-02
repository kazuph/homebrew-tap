class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.60/ikesu-darwin-arm64"
      sha256 "05d32ebe30d029a4cf7add9545b7df002661224710c46933340a73afacb8a27d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.60/ikesu-darwin-amd64"
      sha256 "0130a8c76c713d83054c0a8cc243b34f4201d97b6f9c6e9f4ff2b44fc8249772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.60/ikesu-linux-arm64"
      sha256 "ee87c8a2ede815cec1703b0188efb597cb302c6fc2a70c7acac0d9f0ad6e5045"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.60/ikesu-linux-amd64"
      sha256 "d13b532351a9564a173f8971645667e73b67c31e514a6d23d81322df0f8408a3"
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
