flapjack Cookbook
=================
This cookbook installs the Flapjack monitoring notification system. For more
information about Flapjack see http://flapjack.io/

Requirements
------------
This cookbook uses the prebuilt packages for Ubuntu 12.04. This installs a
140MB debian package you might want to look into an apt cache.

#### cookbooks
- `apt` - for registering the APT repository
- `logrotate` - for managing the rotation of log files

Attributes
----------
#### flapjack::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['flapjack']['all_environments']</tt></td>
    <td>Boolean</td>
    <td>whether to include nodes from all environments in this Chef server
    or just the environment this nodes is contained within</td>
    <td><tt>false</tt></td>
  </tr>
</table>

Usage
-----
#### flapjack::default
Just include `flapjack` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[flapjack]"
  ]
}
```

License and Authors
-------------------
Authors: Adam Ashley <aashley@adamashley.name>
