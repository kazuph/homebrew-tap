class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.187"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.187/ikesu-darwin-arm64"
      sha256 "0fb839c83fd92854084bb14c34ce4bbd209431c1fb1441581f079621a9ee61cc"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.187/ikesu-darwin-amd64"
      sha256 "f880d3f545cffd0546ae965b67adf6706dbe87a17adb979450855a8ea10f8864"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.187/ikesu-linux-arm64"
      sha256 "c1a1def23acf36403e0eaf3f43375e182088acb07db36c6e79ea67396eba63a6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.187/ikesu-linux-amd64"
      sha256 "6f2c242cee02e245cedb991f2e238af813b808e2c89034359f68e42c2f7cbef3"
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
