class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.84"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.84/ikesu-darwin-arm64"
      sha256 "791f368ac0849181b60cd26b5cb68ac4b392f06e0e5a26cf1246c07515b9c6c7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.84/ikesu-darwin-amd64"
      sha256 "f07296d2700a4c50e27c6a051573a15502565bcb31c08ccf5a66731b71e859ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.84/ikesu-linux-arm64"
      sha256 "1b4fca1df9390786fce1ed230c58640ea4b8595c43ef0f3dad8bf6eabb251824"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.84/ikesu-linux-amd64"
      sha256 "9cd8952c2ee974d1a31cab62de19b1887a1349ecad3cffd50f9bdb83b15c02f2"
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
