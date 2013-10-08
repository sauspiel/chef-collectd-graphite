site :opscode

metadata

cookbook 'collectd', git: "https://github.com/sauspiel/chef-collectd"

group :integration do
 cookbook "collectd-graphite_test", :path => "./test/integration/cookbooks/collectd-graphite_test"
end
