class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.41/ikesu-darwin-arm64"
      sha256 "3b9df9caa3d647def557b6f9b492333b021cda2f1851db783fd6a5a69d630e6f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.41/ikesu-darwin-amd64"
      sha256 "fe9f1fc5cebd89f2dc94a7e96712641e851aad2c2e8921a71d27576a6bfad35b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.41/ikesu-linux-arm64"
      sha256 "d2bd07a0d9577c188c5321fdf1fd0b7605399b15218d3c60a583a126b13eb6a6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.41/ikesu-linux-amd64"
      sha256 "e2f1b92b885faf473b5d0c7ef28d56fa9afa652196a6482bce34026bb04a5b57"
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
