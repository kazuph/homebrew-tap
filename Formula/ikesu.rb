class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.31/ikesu-darwin-arm64"
      sha256 "aad2a6c95bb4e1e1ee403a73d96d55f471a65b5c7515d80bcacfb156c1ada7b0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.31/ikesu-darwin-amd64"
      sha256 "aef679d84894c48ffa7d7ab9ad370bd21de0eacd0bacb60b698747f12ea78b14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.31/ikesu-linux-arm64"
      sha256 "d4fc3456417bf524c9ab40e6ff566eb6ccf09182bd230565b00cd079a340c2e1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.31/ikesu-linux-amd64"
      sha256 "3a115c69c124f7044a9516133302a503ac8f4682acec9cf972dbe309e592e63a"
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
