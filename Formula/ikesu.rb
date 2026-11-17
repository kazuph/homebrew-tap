class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.174"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.174/ikesu-darwin-arm64"
      sha256 "4159efa1f5a47e7fabc76564899fba926e54529e065b5ef184d9943f52f4da48"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.174/ikesu-darwin-amd64"
      sha256 "a8233b6a62117534d503609a3ac940d746581ef826098905e918df18c99ed1d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.174/ikesu-linux-arm64"
      sha256 "a0ee562a1b49f601568816bf63462e84ed3609ddbc8d877ce7b0ffaac0cd5453"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.174/ikesu-linux-amd64"
      sha256 "176450f308aa13b6c047b0bd5c35a73e45078cc260a65bc4d35d10ea3c7dcf69"
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
