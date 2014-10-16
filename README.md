This is deprecated. Project didn't progress at work and I never got time to
finish this. Use https://github.com/hw-cookbooks/flapjack instead.

flapjack Cookbook
=================
This cookbook installs the Flapjack monitoring notification system. For more
information about Flapjack see http://flapjack.io/

Requirements
------------
This cookbook uses the prebuilt packages for Ubuntu 12.04. This installs a
140MB debian package you might want to look into an apt cache.

*Warning* the flapjack packages are not signed so this cookbook enables
unauthenticated installation of packages by APT. Hassle the flapjack devs
to sign their packages.

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

Testing
-------

Install berkshelf and the vagrant-berkshelf plugin to test this cookbook under
vagrant.

License and Authors
-------------------
Authors: Adam Ashley <aashley@adamashley.name>
