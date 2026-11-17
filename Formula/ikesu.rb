class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.161"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.161/ikesu-darwin-arm64"
      sha256 "78dd319e288f321405db47d372a06ef3b6c84e8b5b03da2b0895d09668745cbb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.161/ikesu-darwin-amd64"
      sha256 "b6d7fc946593ab760cc03c3e8a54e5b030a06082ddb31a65a9e2e62243c50e48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.161/ikesu-linux-arm64"
      sha256 "9c0146c4914953923768afab9eefd3f123e06f555a832646b12149a120c83c06"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.161/ikesu-linux-amd64"
      sha256 "34c35bae65b3db35c546c1375b937757e050d3cf8bbbd24b87b7b7e9d6fc77f2"
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
