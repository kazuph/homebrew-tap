class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.69/ikesu-darwin-arm64"
      sha256 "aba9d888806236c49243ad02a59f3d58ae0e2ebf8f5855a39615e45e6e6302c5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.69/ikesu-darwin-amd64"
      sha256 "203482bd1ed65414678cd726cc1c5811a3ac09ab7ffbde69bae740a6bb28f380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.69/ikesu-linux-arm64"
      sha256 "0367ccaf2922987db034b48bc2266ccecb723b25919653d7db033fd7a7882041"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.69/ikesu-linux-amd64"
      sha256 "ef0b447b25f5f7e7a195ca139f7e2e092c2faa7013b956d02029950c87340565"
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
