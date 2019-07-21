require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

    def setup
        @category = Category.new(name: "Sports")
    end
    
    test "category should be valid"
        assert @category.valid?
    end
end