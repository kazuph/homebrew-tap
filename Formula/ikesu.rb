class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.176"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.176/ikesu-darwin-arm64"
      sha256 "63a8c83f39dbcd01c84b39d075484e842440a8b13e3a1705f5b0fae966423ea4"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.176/ikesu-darwin-amd64"
      sha256 "d25832a86383596d6188d54a871041fe1263baaac3ae720b79bd8e2e0693ebe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.176/ikesu-linux-arm64"
      sha256 "a7f3251166872ceea57b7895ed5582609718feddc9d93a5536d701460e8d6400"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.176/ikesu-linux-amd64"
      sha256 "979be7578595096f7046de38f2eec1d8b1d4e0c330d8c8af8996d85ff28711c2"
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
