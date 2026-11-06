class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.85"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.85/ikesu-darwin-arm64"
      sha256 "37856d8bb07fa32df8f16c18244ef38ee326c77356e9432daa94e054e56f0ecb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.85/ikesu-darwin-amd64"
      sha256 "284ce6648b1abb2e240aea83f8aa0b12c26172fd743e5685dddf33c78b0f8824"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.85/ikesu-linux-arm64"
      sha256 "3560351eea948fa6509d92474d2dde3656a39be4dc87f33d10bbe17a993a5568"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.85/ikesu-linux-amd64"
      sha256 "437053feadc34e97c0c471aa785a77efa134a9cc30c4722453d281253b176877"
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
