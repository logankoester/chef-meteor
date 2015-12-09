require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/cacher'

ChefSpec::Coverage.start!

RSpec.configure do |config|
end

def stub_data_bag_item_from_file(data_bag, item)
  stub_data_bag_item(data_bag, item) do
    JSON.parse(
      File.read("spec/data_bags/#{data_bag}/#{item}.json")
    )
  end
end
