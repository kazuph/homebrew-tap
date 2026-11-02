class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.61/ikesu-darwin-arm64"
      sha256 "94558693e7c7c9d225d0d6f6cf36eacaac4211f9abce183aa6438e1bf7d8391c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.61/ikesu-darwin-amd64"
      sha256 "5dd4c62b956d173822f2a4145f73cdb3013f4a5c2f84e2d8229099b65f24473e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.61/ikesu-linux-arm64"
      sha256 "b748676670b635d25adcea9950e42fc9b8dbc9cca4f0a4826d3873bc2d81003e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.61/ikesu-linux-amd64"
      sha256 "7f2c88f829f3bb45782d21e140d7e831d1071696dbbc8647f18b403762e084c7"
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
