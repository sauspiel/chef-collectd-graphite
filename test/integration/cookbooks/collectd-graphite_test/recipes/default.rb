attrs = { 
  :write_graphite => {
    :Host => "localhost",
    :Port => "2003",
    :Prefix => "collectd.",
    :EscapeCharacter => "_",
    :StoreRates => true,
    :AlwaysAppendDS => false
  }
}
node.override[:collectd].merge!(attrs)
include_recipe "collectd-graphite"
