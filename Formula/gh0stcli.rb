class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.13.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.1/gh0stcli_0.13.1_darwin_arm64.tar.gz"
      sha256 "4470079fc992c60b59901156573980c922245602087809496f7a6fee58b1da87"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.1/gh0stcli_0.13.1_darwin_amd64.tar.gz"
      sha256 "9cea57e765d51f97be3339de3cecccf5b415d0d03e9e8b94075af849861e3c55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.1/gh0stcli_0.13.1_linux_arm64.tar.gz"
      sha256 "545d916f3f0ae39e8681125e7bc8036492db2e0ea1342a5b32f2ce9c9c54db02"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.1/gh0stcli_0.13.1_linux_amd64.tar.gz"
      sha256 "39c6f6b53324757aff2ff8fe0bf23493826e87420a0aef27994c0975e51132aa"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
