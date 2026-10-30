class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.50/ikesu-darwin-arm64"
      sha256 "39e0db50032cb33c96ad5a42f71c2809d059680c50604847935a22c3b3b1a45a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.50/ikesu-darwin-amd64"
      sha256 "eb237550e4b4f9a85a5b415cd17aff65aed337e0a926975b7ed0207db36b45c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.50/ikesu-linux-arm64"
      sha256 "e9c45b7fa51473b6bbc930e59cc94ac04cd7a450811df04fb32dc81c227e010e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.50/ikesu-linux-amd64"
      sha256 "ef2e26a9dbcc4b7c5d7e177cb41678438de0b7d8661631c3e62ba77606dbdd1e"
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
