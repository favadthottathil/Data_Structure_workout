import 'dart:collection';

void main() {}

class Graph {
  Map<int, List<int>> graph = HashMap();

  add(int vertex, int edges, bool isBidirectional) {
    if (!graph.containsKey(vertex)) {
      graph[vertex] = [];
    }

    if (!graph.containsKey(edges)) {
      graph[edges] = [];
    }

    graph[vertex]!.add(edges);

    if (isBidirectional) {
      graph[edges]!.add(vertex);
    }
  }

  delete(int vertex) {
    graph.remove(vertex);

    graph.forEach((key, value) {
      value.removeWhere((element) => element == vertex);
    });
  }

  bfs(int first) {
    List<int> visited = [];

    Queue queue = Queue();

    visited.add(first);

    queue.add(first);

    while (queue.isNotEmpty) {
      int value = queue.removeFirst();

      List<int> list = graph[value]!;

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

        for (var element in graph[vertex]!) {
          visit(element);
        }
      }
    }

    visit(first);
    print(result);
  }
}
