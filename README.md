# collectd-graphite Cookbook

Chef cookbook that creates a collectd [write_graphite](https://collectd.org/wiki/index.php/Plugin:Write_Graphite) plugin

## Requirements

[collectd-cookbook](https://github.com/sauspiel/chef-collectd)

## Usage

include `collectd-graphite` in your role's run_list and define `node[:collectd][:write_graphite]` attributes. `node[:collectd][:write_graphite]` will be rendered as is, so you can add or change attributes as defined [here](https://collectd.org/wiki/index.php/Plugin:Write_Graphite)

```json
{
  "name": "collectd_server",
  "collectd": {
    "write_graphite": {
      "Host": "localhost",
      "Port": "2003",
      "Prefix": "collectd.",
      "EscapeCharacter": "_",
      "StoreRates": true,
      "AlwaysAppendDS": true
    }
  }
}
```

will create a `write_graphite.conf` with the content

```sh
$ cat /etc/collectd/plugins/write_graphite.conf
#
# This file is generated by Chef
# Do not edit, changes will be overwritten
#
LoadPlugin "write_graphite"

<Plugin "write_graphite">
 <Carbon>
  Host "localhost"
  Port "2003"
  Prefix "collectd."
  EscapeCharacter "_"
  StoreRates true
  AlwaysAppendDS false
 </Carbon>
</Plugin>
```

## License and Authors

* Author:: Holger Amann holger@sauspiel.de

* Copyright:: 2013, Sauspiel GmbH (https://www.sauspiel.de)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
