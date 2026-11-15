class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.149"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.149/ikesu-darwin-arm64"
      sha256 "45d2aaa08b8d025e72350029d8a2ff0c0eee630ebbdca3fc029806e34ec47988"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.149/ikesu-darwin-amd64"
      sha256 "a8d28a3337376bf886239a4bbf274335aefc1decb7f80142bc9395afd19b4056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.149/ikesu-linux-arm64"
      sha256 "0a18e7c42fb2f2ae7b290a6a4d225f9801ad6eada2f7173f0f367dafb4fbae1e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.149/ikesu-linux-amd64"
      sha256 "30fe5373909bd9f470e7e6104b4f058bc640f92665574aceafa3b0177fe8b72e"
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
