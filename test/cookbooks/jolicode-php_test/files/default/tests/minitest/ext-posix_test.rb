require File.expand_path('../support/helpers', __FILE__)

describe_recipe "jolicode-php_test::ext-posix" do
  include Helpers::CookbookTest

  let(:php_info) { assert_sh("php -i") }

  it "installs the posix extension" do
    php_info.must_include("\nposix\n")
  end
end