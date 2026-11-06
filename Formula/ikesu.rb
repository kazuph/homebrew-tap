class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.83/ikesu-darwin-arm64"
      sha256 "2333c4ccd61b23aec4cfd2b0c463cec26a8e80da41f8dab9ae855a03ca1d5e25"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.83/ikesu-darwin-amd64"
      sha256 "9687549a41ab9dbb781bc907dd5c0742886e409aba4634907a2bf729da3b2c62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.83/ikesu-linux-arm64"
      sha256 "fa1ff426da12a8e2ca122906f799199624ebe9c0fabd94b5a84d766312138a35"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.83/ikesu-linux-amd64"
      sha256 "725fdd999b95ad22cb6d9d0b8edacaaf90ac82d7e8d1a109b0c6e561a3b8876d"
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
