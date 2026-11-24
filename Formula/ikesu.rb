class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.188"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.188/ikesu-darwin-arm64"
      sha256 "6ec416e687a0a4f3e624d85228a29a1dc8451628f096009e2c37d45a4bd960b8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.188/ikesu-darwin-amd64"
      sha256 "784a49b62d5b5d23d397fe397f908b96d5972e5406adda53701ca9bdcd737f56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.188/ikesu-linux-arm64"
      sha256 "be8c1c260f314430100019ed0ef1854ef9a604317d1bf3f03d148211248e7c15"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.188/ikesu-linux-amd64"
      sha256 "f23384cb020ac1828c727a9932019091e41e4b16819e576762ba59997500df38"
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
