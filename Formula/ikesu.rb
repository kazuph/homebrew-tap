class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.183"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.183/ikesu-darwin-arm64"
      sha256 "980ff8e7118c9f984059a2dffe59786a74a66b42a0e7fc62c762990903c38595"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.183/ikesu-darwin-amd64"
      sha256 "39b7ecb2f11a6ca05bf57b1359361b1d117b68fe060f6e36101818dc701eced3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.183/ikesu-linux-arm64"
      sha256 "20440cd53ec60a322b1343dfe361b74d9986ae880db2d2026dd23f754e2f6812"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.183/ikesu-linux-amd64"
      sha256 "ab650411dc83f248cb3caa9039ab838069489bcdae337f61a5ac81ff1b070994"
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
