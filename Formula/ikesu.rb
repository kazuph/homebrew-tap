class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.138"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.138/ikesu-darwin-arm64"
      sha256 "a1f4295901b1739d83aa81f11a9a5651c16c516bd005c81740286b10020f0778"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.138/ikesu-darwin-amd64"
      sha256 "0a8ccedf78fad9c5a85dfbacf8c3c3d012e0bfdc695158239bed801f183bc046"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.138/ikesu-linux-arm64"
      sha256 "766a6e19d1d36e632f122978b9963055eadcc52073ed4904b1f5153816e11330"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.138/ikesu-linux-amd64"
      sha256 "f3fad6e4dc15f718592dc6112e96cb95bdd23ed0491198193cc80286b9f16bc4"
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
