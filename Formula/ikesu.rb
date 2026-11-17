class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.173"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.173/ikesu-darwin-arm64"
      sha256 "9e0ac97b61df97f0e1dc71bbc2c9e233440e6a4c3b3d9b262d61cbddf356a8d1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.173/ikesu-darwin-amd64"
      sha256 "14589b96d2558cf76be64f64057b5770693b0c0ed316666682da0943f7d3683d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.173/ikesu-linux-arm64"
      sha256 "7eb6aa9c7273dbe7d4d242d068108d16413530d13c09c20b76ac1f7aecc1e0e7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.173/ikesu-linux-amd64"
      sha256 "8ccd6c533211838dbd72dfea45bdea9fdf877b2a1d836fb32b4543c59ff1edc5"
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
