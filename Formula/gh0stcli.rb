class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.1.10"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.10/gh0stcli_0.1.10_darwin_arm64.tar.gz"
      sha256 "ffaded31aa2a543950d580cc97816d3d5214a37a7882c50cc622364834e90880"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.10/gh0stcli_0.1.10_darwin_amd64.tar.gz"
      sha256 "4e5bab8a054e10bc40e97958e2a4aeaa9c6f5ee03e0002a5a0955aaca9c91e1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.10/gh0stcli_0.1.10_linux_arm64.tar.gz"
      sha256 "77eae06028fe987ea9bcde9fb9d9e7f7b6e46d31b4d568cb03953d441b4635e4"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.10/gh0stcli_0.1.10_linux_amd64.tar.gz"
      sha256 "4ef7360519c32b73355dbf9a7d1285824aed8bc6c85b6ac114a6a82c6cbecb5b"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
