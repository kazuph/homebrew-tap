class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.47/ikesu-darwin-arm64"
      sha256 "49805b4b0184b95821a0c4d7b9839c7fe90bc7fe90f5d17371a206bf05c76a00"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.47/ikesu-darwin-amd64"
      sha256 "f7b340ac75d4397f60780127e11f4680d127d3bfe7ed29731149f769f5aae9af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.47/ikesu-linux-arm64"
      sha256 "9e4c54196cac9e328bf646baf8b5afeeb4628ab3a0fd2722206aed27aa3ee00b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.47/ikesu-linux-amd64"
      sha256 "277cc3f2721fbe76378171210dbe3bbb18b57f723b7e2cb02be262ac9f48badf"
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
