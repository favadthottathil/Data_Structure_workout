import 'dart:collection';


void main() {
  Graph graph = Graph();
  graph.insert(5, 3, false);
  graph.insert(5, 10, false);
  graph.insert(10, 100, false);
  graph.insert(3, 100, false);

  graph.dfs(5);
}

class Graph {
  Map<int, List<int>> graph = HashMap();

  insert(int vertex, int edges, bool isBindirectional) {
    if (!graph.containsKey(vertex)) {
      graph[vertex] = [];
    }
    if (!graph.containsKey(edges)) {
      graph[edges] = [];
    }

    graph[vertex]!.add(edges);

    if (isBindirectional) {
      graph[edges]!.add(vertex);
    }
  }

  remove(int vertex) {
    graph.remove(vertex);

    graph.forEach((key, value) {
      value.removeWhere((element) => element == vertex);
    });
  }

  breadthFirstSearch(int first) {
    List<int> visited = [];
    Queue queue = Queue();

    visited.add(first);
    queue.add(first);

    while (queue.isNotEmpty) {
      int temp = queue.removeFirst();

      List<int> list = graph[temp] ?? [];

      for (var element in list) {
        if (!visited.contains(element)) {
          visited.add(element);
          queue.add(element);
        }
      }
    }
    print(visited);
  }

  dfs(int first) {
    Set<int> visited = {};
    List<int> result = [];

    visit(int vertex) {
      if (!visited.contains(vertex)) {
        visited.add(vertex);
        result.add(vertex);

        for (var neighbor in graph[vertex]!) {
          visit(neighbor);
        }
      }
    }

    visit(first);
    print(result);
  }
}
