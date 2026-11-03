class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.7.0"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.7.0/klyro_v1.7.0_darwin_arm64"
      sha256 "152d9a6fe9f7920962ddf447e75d5661bf5c1697878c32db0057b036730d1454"

      def install
        bin.install "klyro_v1.7.0_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.7.0/klyro_v1.7.0_darwin_amd64"
      sha256 "3d4dc7e16f23f8ea1a523db245dc5f9f1b4e044f6dbf8bb1c8e8c1e2828dafc2"

      def install
        bin.install "klyro_v1.7.0_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.7.0/klyro_v1.7.0_linux_arm64"
      sha256 "b57aba22d47a10b9cc39c3f3381b807eb03b9813751506e54af939e7735a7599"

      def install
        bin.install "klyro_v1.7.0_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.7.0/klyro_v1.7.0_linux_amd64"
      sha256 "a57118852d24a30b9066e464c69dce601e65c30e5f7054cf6e12ca31d51b05e8"

      def install
        bin.install "klyro_v1.7.0_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
