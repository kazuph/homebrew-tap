class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.87"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.87/ikesu-darwin-arm64"
      sha256 "bbc49be5c3b50a782dd995752950aaeb7bc6c8aa06e3ca9ec44daa66d99da32e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.87/ikesu-darwin-amd64"
      sha256 "adb312d1f9980446389732358f00067eeaffecaec4b5c03bfbad1dfdecac577b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.87/ikesu-linux-arm64"
      sha256 "74bc4b0a10409226c51b39678fe4644640b1eeb4c3812a295cef336e19e5f62d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.87/ikesu-linux-amd64"
      sha256 "7dcbe1651caff5b2f0a4ba9607af005543673c6d8fc225861bdc9a8c2f25c59a"
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
