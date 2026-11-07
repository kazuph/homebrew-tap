class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.92/ikesu-darwin-arm64"
      sha256 "11cfb36bf67eebeaf484693dbf240f593e32d5b61ad5067cec974e722259d9c2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.92/ikesu-darwin-amd64"
      sha256 "3475859c347dd26155f70477dc5d10d298412c1e55f14d489e87c1282a71fc01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.92/ikesu-linux-arm64"
      sha256 "e0be31083ff8b4ee48870c24acb19a93afd1b0981855edbbdbcdc360be076fe2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.92/ikesu-linux-amd64"
      sha256 "e4ffb43f536406c2abf693c41c3cc84ee4105d36a2ac44c18a377562f90aca37"
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
