# DOUBLE BLIND review

This repo was created to the purpose of reviewing a paper submitted to the SIAM IMR23.

This mesh generator needs a initital triangulation to generate a new mesh. You can generate a quick triangulation with the software [triangle](https://www.cs.cmu.edu/~quake/triangle.html) with the [command -zn](https://www.cs.cmu.edu/~quake/triangle.switch.html).

For build the project

```
cd build
cmake ..
make
```

Input commands of the polygonal mesh generator are:

```
./meshGenerator <triangulation .node> <triangulation .ele> <triangulation .neigh> <output name>
```

For example

```
./meshGenerator ../data/points1000.1.node ../data/points1000.1.ele ../data/points1000.1.neigh points1000.2
```

The output file is a OFF file, you can visualize this file using geomview or meshlab.

## Scripts

Scripts made to facilizate the process of test the algorithm, they need the software [triangle](https://www.cs.cmu.edu/~quake/triangle.html) or CGAL (2D triangulations package) to work.


(in build folder)

To generate a random points, triangulation and the polygonal meshW:


```
./generatemesh.sh <number of points>
```

For example

```
./generatemesh.sh 1000
```

To generate a polygonal mesh from an already generated triangulation, with the files .node, .ele and .neigh:

```
./generatemesh.sh <filename>
```

For example

```
./generatefromfile.sh ../data/points1000.1
```
