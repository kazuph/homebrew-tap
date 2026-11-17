class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.166"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.166/ikesu-darwin-arm64"
      sha256 "b77554b003e4bdcc80226637535cc6b4b912f9cbe1f4b17a74a92872b3d4bb88"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.166/ikesu-darwin-amd64"
      sha256 "7bbe2a6d627f6c58f0a6fa129363ec7531262a030bf7a8bf942bfbbde4a6f246"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.166/ikesu-linux-arm64"
      sha256 "6697a3b526bc2832e8d88a06f0afade225ee12ded7e06aa26e0f863396f2d202"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.166/ikesu-linux-amd64"
      sha256 "ff73ada27c1fec6cfedffa9e9b52287a15445a98b705e0f2993b39a4efa0764a"
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
