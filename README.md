# Demo Enterprise Configuration Management Framework

TODO

## Starting the nodes masterless

All nodes are available to test with Puppet masterless. To do so, add `ml-` for the name when using vagrant:

```
$ vagrant up ml-<role>
```

and/or

```
$ vagrant up ml-<role>
```

## Staring the nodes with PE

You can also test with a Puppet Enterprise server. To do so, add `pe-` for the name when using vagrant:

```
$ vagrant up pe-pemaster
$ vagrant up pe-<role>
```

## Required software

The software must be placed in `modules/software/files`. It must contain the next files:

### Puppet Enterprise

- puppet-enterprise-2017.2.3-el-7-x86_64-x86_64.tar.gz (Extracted tar)

