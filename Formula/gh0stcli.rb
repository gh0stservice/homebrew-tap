class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.1.13"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.13/gh0stcli_0.1.13_darwin_arm64.tar.gz"
      sha256 "52816e21176b54b7d681217d1733537709d9dc1c230b7413299ea6501e9a2bb1"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.13/gh0stcli_0.1.13_darwin_amd64.tar.gz"
      sha256 "29cc882eb16efa06387e6bbdd449a9c43201148a621d52dc2441ff8b342bd551"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.13/gh0stcli_0.1.13_linux_arm64.tar.gz"
      sha256 "f5867eccd9573d4dea8f43124914432adaa7c81fcbb28c241a197c8b4d0ea6b1"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.13/gh0stcli_0.1.13_linux_amd64.tar.gz"
      sha256 "cbf474a3c70c796dae65180a3af5752958f2c83c2f71d858b191bf7ab48a778f"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
