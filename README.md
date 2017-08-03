# git-scripts
useful git scripts

## INSTALL

(tested only on OSX)

```
make
```

## EXAMPLES

```
$ git benchmark 6dc15fd..6ed7508 'ruby src/compiler/compiler.rb tmp/test_compiler_performance_0001_random.dab'

Revision     | Date                 | Title                                          | Time        
-------------+----------------------+------------------------------------------------+-------------
6dc15fda1648 | 29 hours ago         | performance specs                              |   1.27s     
8ea2039d10e4 | 28 hours ago         | compiler: optimize Node._children_tree         |   0.83s     
2cca1e813dde | 27 hours ago         | compiler: optimize all_nodes(klass)            |   0.74s     
6ceb1de7be07 | 4 hours ago          | compiler: simplify run_processors! calls       |   0.71s     
6ed750880838 | 3 hours ago          | compiler: optimize processors cache            |   0.62s     
```
