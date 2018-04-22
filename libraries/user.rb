#
# Chef Documentation
# https://docs.chef.io/libraries.html
#
class Chef
  # Chef Library recipe
  class Recipe
    # Chef private class
    class User
      attr_reader :name, :home, :node

      def initialize(name, home, node)
        self.name = name or raise 'name cannot be nil'
        self.home = home or raise 'home cannot be nil'
        self.node = node or raise 'node cannot be nil'
      end

      def transit_tips_path
        File.join(home, node['transit.tips']['dir'])
      end

      def secrets_path
        File.join(home, node['secrets']['dir'])
      end

      private

      attr_writer :name, :home, :node
    end

    def my_chef_user
      User.new('chef', '/home/chef', node)
    end

    def my_nginx_user
      name = node['nginx']['user']

      User.new(name, Dir.home(name), node)
    end

    def my_root_user
      User.new('root', Dir.home('root'), node)
    end
  end
end
