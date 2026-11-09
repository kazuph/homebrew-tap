class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.114"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.114/ikesu-darwin-arm64"
      sha256 "2a2e98f7dda3c552668a49e5614a668ed76ea58321362f1ddc4e85cbc00c861f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.114/ikesu-darwin-amd64"
      sha256 "34287c86a7f4677e172bb07bea4c899075e6e042ac65b4cbb8ae799146204113"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.114/ikesu-linux-arm64"
      sha256 "5fd87988db9cbaa6bf0637e2a33a1252310f541b52e63037dcdd3e1258b55e42"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.114/ikesu-linux-amd64"
      sha256 "b934490c22e1450dbf28c6970863433cdf22365bf780d7cefb9fb94e30a3f667"
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
