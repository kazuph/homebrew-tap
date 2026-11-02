class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.57/ikesu-darwin-arm64"
      sha256 "e80c0f2171b153992d245852d96c65c29214868eb4bb5a10e35fe3ac78a82f63"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.57/ikesu-darwin-amd64"
      sha256 "b559a2ed834bdb2003273ab248d2b6eb6775649d1fd6783d6cb32e6172a90622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.57/ikesu-linux-arm64"
      sha256 "fa2a2d770d863efba21e7e46ded5baf1a0e98228938cf6095259bcf3c1bd7e71"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.57/ikesu-linux-amd64"
      sha256 "9ae1e0b6f7b3e8f0f35f150e836524a9ed052e1a3da9f3a28f6b2c90446e74ad"
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
