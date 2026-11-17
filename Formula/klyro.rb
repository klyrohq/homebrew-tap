class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.10.2"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.10.2/klyro_v1.10.2_darwin_arm64"
      sha256 "4d183dffa833d8049692cfe10ce83623861e7ed43390b835e7c62fe4f9a938c1"

      def install
        bin.install "klyro_v1.10.2_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.10.2/klyro_v1.10.2_darwin_amd64"
      sha256 "9bfae66f64aae6ec0bd8f967e20c3ffd7faebc4cfb92f43489fff8927ab40b1c"

      def install
        bin.install "klyro_v1.10.2_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.10.2/klyro_v1.10.2_linux_arm64"
      sha256 "bb86a3ed91e47a88c61b2228d8a7d2a650da86ab7805638e7ab2865bfafcece7"

      def install
        bin.install "klyro_v1.10.2_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.10.2/klyro_v1.10.2_linux_amd64"
      sha256 "64f5a845a9b8e0d8b01d6b9aa5dc588bd314852ecdc46c96e9b0f7042b28ada4"

      def install
        bin.install "klyro_v1.10.2_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
