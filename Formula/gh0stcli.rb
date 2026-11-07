class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.14.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.14.0/gh0stcli_0.14.0_darwin_arm64.tar.gz"
      sha256 "3ed1b2292b2374c1cfd874bec8e66e5be1f7eb327a3ce039274aaec24f11abcd"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.14.0/gh0stcli_0.14.0_darwin_amd64.tar.gz"
      sha256 "c1d913c47ca65c9ba88ab557b7ff2219343ea82b26545c772a7534874daf7cba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.14.0/gh0stcli_0.14.0_linux_arm64.tar.gz"
      sha256 "893e863be5d4f85024de05ee417ecb04fe4c7a55d528dfed1de34ee1d7d59dce"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.14.0/gh0stcli_0.14.0_linux_amd64.tar.gz"
      sha256 "25a089b38ab225aca06f6b365a999294544da63cca7f69c768311a6989cc0213"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
