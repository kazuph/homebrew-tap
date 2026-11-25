class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.192"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.192/ikesu-darwin-arm64"
      sha256 "76f30994bd0a67411803386b38df472631761eb85f9a1cc91d56ce50ba844e4a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.192/ikesu-darwin-amd64"
      sha256 "ff1828195d25a422b78072ceb8fcca6de2950c8fb188bb5f751ba9279bb94765"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.192/ikesu-linux-arm64"
      sha256 "202b8e08e9b5012ad53c1783e3f7e69490f584981361ed7bbb0caafa205bdd30"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.192/ikesu-linux-amd64"
      sha256 "0f78cb414e73aa32770ed9a18d5a624604a6a45d44c34b4fb19b29ec72a71528"
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
