class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.171"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.171/ikesu-darwin-arm64"
      sha256 "8e35a4fc0251f2ad30da462bcd185e601784e9f982cfe927132e42218881b995"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.171/ikesu-darwin-amd64"
      sha256 "c9d023f5b00ab21d6195f59ad1ceb95f5a52e42ab2f94142f24c38427e63b5d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.171/ikesu-linux-arm64"
      sha256 "dca45d9726add84a057e68415e64c3c2464a6928dbe52f24017430c720024706"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.171/ikesu-linux-amd64"
      sha256 "262a8f4b2b4c2dddb4cbc7afc2b3ad59f15dff1f86e4dfc0e3a75354707ed041"
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
