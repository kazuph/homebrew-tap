class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.205"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.205/ikesu-darwin-arm64"
      sha256 "2fe4cb22388ab79420ddc534b896d48e0e935ccfbfb62b567a4b2d9bdfd9260a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.205/ikesu-darwin-amd64"
      sha256 "8c20687283938cd92a92e111f20a338d498a9d4184bd498dc1fb56a2221900ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.205/ikesu-linux-arm64"
      sha256 "9b37536feb0cbf87b705b2c90d341121ff17013898d9e20ea04e0d3473fb37ee"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.205/ikesu-linux-amd64"
      sha256 "baae44c33a3b2bbc1971f01e579d0a31c1d0508ccc874056e54be03c9e4f0905"
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
