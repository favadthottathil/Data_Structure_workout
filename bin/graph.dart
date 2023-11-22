import 'dart:collection';
import 'dart:io';

void main(List<String> args) {
  Graph graph = Graph();

  graph.insert(5, 3, false);
  graph.insert(5, 10, false);
  graph.insert(10, 100, false);
  graph.insert(3, 100, false);

  // graph.display();

  graph.bfs(graph,5);

  // var list = graph.bfs(graph, 5);

  // for (var element in list) {
  //   stdout.write('$element ');
  // }
  // print(' ');
}

class Graph {
  Map<int, List<int>> map = HashMap();

  insert(int vertex, int edge, bool isbidirectional) {
    if (!map.containsKey(vertex)) {   
      addvertex(vertex);
    }

    if (!map.containsKey(edge)) {
      addvertex(edge);
    }

    map[vertex]?.add(edge);

    if (isbidirectional) {
      map[edge]?.add(vertex);
    }
  }

  addvertex(int vertex) {
    map[vertex] = [];
  }

  delete(int vertex) {
    map.remove(vertex);

    map.forEach((key, value) {
      value.removeWhere((element) => element == vertex);
    });
  }

  display() {
    map.forEach((key, value) {
      print('$key:  ');
      for (var element in value) {
        print('$element,');
      }
      print('');
    });
  }

  bfs(Graph graph, int first) {
    List<int> visited = [];

    Queue queue = Queue();

    visited.add(first);

    queue.add(first);

    while (queue.isNotEmpty) {
      int current = queue.removeFirst();

      List? adjecentNode = graph.map[current] ?? [];

      for (var element in adjecentNode) {
        if (!visited.contains(element)) {
          visited.add(element);
          queue.add(element);
        }
      }
    }
    return visited;
  }

  



  
}