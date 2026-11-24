class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.185"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.185/ikesu-darwin-arm64"
      sha256 "f3ac9bc920704496252d762c1b0bd21860e451f22a495f314a8763dfb6355236"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.185/ikesu-darwin-amd64"
      sha256 "c748620c1542a063fe4687bf8b68dbb9e48e7e8897f035a905107c93ae511d18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.185/ikesu-linux-arm64"
      sha256 "36c45ae7a8c34dc6aa8016bc5a6a132c91d093f7a33970645f9b4c9059253649"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.185/ikesu-linux-amd64"
      sha256 "bd54dc354ac8aa487402bb537528e62968e6289a84b29c26425250076b729e79"
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
