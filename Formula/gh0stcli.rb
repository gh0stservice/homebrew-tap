class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.13.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.0/gh0stcli_0.13.0_darwin_arm64.tar.gz"
      sha256 "cd0d67bac213cc83813f8f56f27e5abcd85a91e2ad64396f37120bfcdea52906"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.0/gh0stcli_0.13.0_darwin_amd64.tar.gz"
      sha256 "6ea139988e8b38b91cb9b330a04b14d8cf9c81888a5825c54e48a067b6e56d61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.0/gh0stcli_0.13.0_linux_arm64.tar.gz"
      sha256 "779bef4bd3a485a6b9d8a7c964afcad7b669e9a7c6e2ce310e95aaf65ce04bff"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.13.0/gh0stcli_0.13.0_linux_amd64.tar.gz"
      sha256 "368ceeee46dc4afcab1aed49785c51f643179717fe9ddc169fa0c8e9ac6245a9"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
