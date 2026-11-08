class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.106"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.106/ikesu-darwin-arm64"
      sha256 "0dfd8552619fca38510fb2e27fe6199c2dac9d3b84193e23310ab3a5622789a7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.106/ikesu-darwin-amd64"
      sha256 "be17fe7a5ac04581d8c1e5f156270fa47ac4946e01b8744cbc4b92504690b857"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.106/ikesu-linux-arm64"
      sha256 "f57cbad7f4c516f883377ff3a093a1360eb48f6d34cd721b260233a1048589ae"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.106/ikesu-linux-amd64"
      sha256 "1aa69d0cc5a4323c7e58d9fa699290ca9a8f8dffa3a17b923833710a20cf5d75"
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
