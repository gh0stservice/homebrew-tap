class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.15.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.15.0/gh0stcli_0.15.0_darwin_arm64.tar.gz"
      sha256 "00b4db31e0c3a3417858cdc011439ccab206718326d1a17232b59de243f58f0c"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.15.0/gh0stcli_0.15.0_darwin_amd64.tar.gz"
      sha256 "d3ac173a44e352beb349e71a615445a30e2dbb9b80c7334bc4ad986f220bed4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.15.0/gh0stcli_0.15.0_linux_arm64.tar.gz"
      sha256 "b47cf50484bd8009066cb704ef5bac1172f7e6d9203402c0f2fcf4c7b06bb627"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.15.0/gh0stcli_0.15.0_linux_amd64.tar.gz"
      sha256 "855cd3960340cea0c59d77c1654d13bab5e3760902e20fe07f55c6c327a1aaee"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
